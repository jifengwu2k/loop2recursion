#include <stdio.h>
#include <sys/mman.h>
#include <string.h>
#include <stdlib.h>
#include <fcntl.h>
#include <stdint.h>

#define WORST_WEAR_COUNT
// #define AVERAGE_WEAR_COUNT

#ifdef DEBUG
#define ASSERT(x) \
    do { \
        if (!(x)) { \
            fprintf(stderr, "ASSERT failed at line %d in file %s\n", __LINE__, __FILE__); \
        } \
    } while (0)
#else
#define ASSERT(x)
#endif

#define PTR_TO_OFFSET(p) (((char*)(p)) - start_address)
#define OFFSET_TO_PTR(o) (start_address + (o))

#define PAGE_SIZE 0x1000
#define CACHE_LINE_SIZE 64
#define NEW_ALLOC_PAGES (128 * 1024 * 1024 / PAGE_SIZE) // 128 KB
#define NIL 0xFFFFFFFFFFFFFFFF
#define BASE_SIZE 64
#define BASE_SIZE_MASK  (BASE_SIZE - 1)
#define NR_SIZES (4 * 1024 / BASE_SIZE)

static int wear_count_limit = 200;

static char *start_address;
static char *free_zone;
static char *end_address;
static unsigned nr_pages;

typedef struct header {
    int64_t size;
} header;

typedef struct header_free {
    int64_t size;
    uint64_t next;
    uint64_t prev;
} header_free;

typedef struct volatile_metadata {
    unsigned char state;
    uint32_t WC; // wear count 
} volatile_metadata;

// free list head
typedef struct list_head {
    uint64_t position;
    uint32_t wearcount;
    struct list_head *next;
} list_head;

static volatile_metadata **volatile_metadata_list;
static unsigned long volatile_metadata_list_size;
static list_head *free_lists[NR_SIZES + 1];

static inline void clflush(volatile char* __p) 
{
    return;
    asm volatile("clflush %0" : "+m" (__p));
}

static inline void mfence() 
{
    return;
    asm volatile("mfence":::"memory");
}

static inline void flushRange(char* start, char* end) 
{
    char* ptr;
    return;
    for (ptr = start; ptr < end + CACHE_LINE_SIZE; ptr += CACHE_LINE_SIZE) {
        clflush(ptr);
    }
}

// Return the index of the size that best fits an object of size size.
static inline int getBestFit(uint32_t size)
{
    int index;
    if (size > NR_SIZES * BASE_SIZE) {
        return NR_SIZES;
    }
    index = size / BASE_SIZE - 1;
    if (size & BASE_SIZE_MASK) { // size is integer multiple of BASE_SIZE_MASK
        index++;
    }
    return index;
}

static inline uint32_t isFreeForward(uint64_t location)
{
    uint32_t n = 0;
    int32_t index = location / BASE_SIZE;
    uint64_t end = free_zone - start_address;
    while (location < end && !(volatile_metadata_list[index]->state)) {
        n++;
        location += BASE_SIZE;
        index++;
    }
    return n;
}

// check free blocks forward from location + size, return num of free blocks forward + size / BASE_SIZE
static inline uint32_t isFreeForwardWithSize(uint64_t location, uint32_t size) 
{
    uint32_t n = size / BASE_SIZE;
    int32_t index = location / BASE_SIZE + n;
    uint64_t end = free_zone - start_address;
    location = location + size;
    while (location < end && !(volatile_metadata_list[index]->state) && volatile_metadata_list[index]->WC < wear_count_limit) {
        n++;
        location += BASE_SIZE;
        index++;
    }
    return n;
}

static inline uint32_t isFreeBackward(uint64_t location) 
{
    uint32_t n = 0;
    int32_t index = location / BASE_SIZE;
    if (start_address + location > free_zone)
        return 0;
    
    index--;
    while (index >= 0 && !(volatile_metadata_list[index]->state) && volatile_metadata_list[index]->WC < wear_count_limit) {
        n++;
        index--;
    }
    return n;
}

// change the state of the volatile metadata to 1
static inline void makeOne(uint64_t offset, uint32_t size) 
{
    unsigned index = offset / BASE_SIZE;
    uint32_t end = index + size / BASE_SIZE;
    for (int i = index; i < end; i++) {
        volatile_metadata_list[i]->state = 1;
    }
}

// change the state of the volatile metadata to 0
static inline void makeZero(uint64_t offset, uint32_t size)
{
    unsigned index = offset / BASE_SIZE;
    uint32_t end = index + size / BASE_SIZE;
    for (int i = index; i < end; i++) {
        volatile_metadata_list[i]->state = 0;
    }
}

static inline void addMetadataWearCount(uint64_t offset, uint32_t size) 
{
    unsigned index = offset / BASE_SIZE;
    for (int i = index; i < index + size; i++) {
        volatile_metadata_list[i]->WC += 1;
    }
}

// Get more memory from the OS, the size of the newly allocated memory has to be 
// at least size bytes, the default is 4 KB
static inline int getMoreMemory(uint32_t size) 
{
    uint32_t newPages = NEW_ALLOC_PAGES;
    char *addr;
    unsigned long new_volatile_metadata_list_size, i;

    while (size > newPages * PAGE_SIZE) {
        newPages++;
    }

#ifdef _GNU_SOURCE
    addr = (char*) mremap(start_address, nr_pages * PAGE_SIZE,
                          (newPages + nr_pages) * PAGE_SIZE, MREMAP_MAYMOVE);
#else
    addr = (char*) mmap(end_address, newPages * PAGE_SIZE, PROT_READ | PROT_WRITE,
                        MAP_ANON | MAP_PRIVATE | MAP_FIXED, 0, 0);
#endif

    if (addr == MAP_FAILED) {
        perror("MAP FAILED");
        return -1;
    }

#ifdef _GNU_SOURCE
    if (addr != start_address) {
        end_address = end_address + newPages * PAGE_SIZE - start_address + addr;
        free_zone = free_zone - start_address + addr;
        start_address = addr;
    } else {
        end_address += newPages * PAGE_SIZE;
    }
#else
    end_address += newPages * PAGE_SIZE;
#endif

    nr_pages += newPages;

    printf("get_more_memory mmap: %p ~ %p\n", end_address - newPages * PAGE_SIZE, end_address);

    // realloc volatile_metadata_list
    new_volatile_metadata_list_size = volatile_metadata_list_size + newPages * PAGE_SIZE / BASE_SIZE;
    volatile_metadata_list = (volatile_metadata **)realloc(volatile_metadata_list, new_volatile_metadata_list_size * sizeof(volatile_metadata *));
    for (i = volatile_metadata_list_size; i < new_volatile_metadata_list_size; i++) {
        volatile_metadata_list[i] = (volatile_metadata *)malloc(sizeof(volatile_metadata));
        volatile_metadata_list[i]->state = 0;
        volatile_metadata_list[i]->WC = 0;
    }
    volatile_metadata_list_size = new_volatile_metadata_list_size;

    return 0;
}


static inline uint32_t averageWearCount(char *location, uint32_t size)
{
    uint32_t awc = 0;
    uint32_t index = (uint64_t)(location - start_address) / BASE_SIZE;
    uint32_t end = index + size / BASE_SIZE;
    for (int i = index; i < end; i++) {
        awc += volatile_metadata_list[i]->WC;
    }
    awc = awc / (size / BASE_SIZE);
    return awc;
}

static inline uint32_t worstWearCount(char *location, uint32_t size)
{
    uint32_t wwc = 0;
    uint32_t index = (uint64_t)(location - start_address) / BASE_SIZE;
    uint32_t end = index + size / BASE_SIZE;
    for (int i = index; i < end; i++) {
        if (wwc < volatile_metadata_list[i]->WC)
            wwc = volatile_metadata_list[i]->WC;
    }
    return wwc;
}


static inline void removeListHeadFromFreeList(uint64_t location, uint32_t index)
{
    // the indexed free_list shouldn't be empty
    ASSERT(free_lists[index]);
    list_head *lh = free_lists[index];
    if (lh->position == location) { // if the list_head is the first list_head in the free_list
        if (lh->next) 
            free_lists[index] = lh->next;
        else 
            free_lists[index] = NULL;
        // free this list_head
        free(lh);
    } else { // the list_head is not the first list_head in the free_list
        list_head *prevlh;
        while ( lh && lh->position != location) {
            prevlh = lh;
            lh = lh->next;
        }

        ASSERT(lh); // Assert when the list_head isn't found in the indexed free_list

        if (lh->next) // the list_head isn't the last list_head
            prevlh->next = lh->next;
        else 
            prevlh->next = NULL;
        // free this list_head
    }
}

// Try to extend the given free location with neighbouring free location,
// and remove the neighbouring free location from their related free_list
static inline void extendFreeLocation(char **location, uint32_t *size)
{
    uint32_t n, index;
    uint64_t offset = (uint64_t)(*location - start_address);

    makeZero(offset, *size);

    n = isFreeForwardWithSize(offset, *size);

    if (n * BASE_SIZE != *size) {
        // remove the forward list_head from its free_lists
        uint64_t forwardLocation = offset + *size;
        index = getBestFit(n * BASE_SIZE - *size);
        removeListHeadFromFreeList(forwardLocation, index);
    }

    *size = n * BASE_SIZE;
    
    n = isFreeBackward(offset);
    if (n > 0) {
        // remove the backward list_head from its free_lists
        uint64_t backwardLocation = offset - n * BASE_SIZE;
        index = getBestFit(n * BASE_SIZE);
        removeListHeadFromFreeList(backwardLocation, index);

        // reset the location value
        *location = (char *)(*location - n * BASE_SIZE);
    }

    *size = *size + n * BASE_SIZE;
}

// Insert the free location in the appropriate free list
static inline void insertFreeLocation(char *location, uint32_t size)
{   
    ASSERT(!(size & BASE_SIZE_MASK));
   
    header *nh;
    list_head *lh;
    int index;

    if (location + size >= free_zone && location < free_zone) {
        // // merge with the free zone
        // // iterate the memory blocks reversely, and merge from the block that all 
        // // the back blocks' WC is less than wear_count_limit  
        // uint64_t offset = PTR_TO_OFFSET(location);
        // unsigned index = offset / BASE_SIZE;
        // uint32_t end = index + size / BASE_SIZE;
        // uint32_t i;
        // for (i = end - 1; i >= index; i--) {
        //     if (volatile_metadata_list[i]->WC > wear_count_limit) {
        //         i++;
        //         break;
        //     }
        // }
        // char *new_location = OFFSET_TO_PTR(i * BASE_SIZE);
        free_zone = location;
        ((header*) location)->size = 0;
        mfence();
        clflush(location);
        return;
    }

    nh = (header *)location;
    nh->size = -(int32_t)size;
    
    // flush the header containing the new size to memory -- marks an unrevertible delete
    mfence();
    clflush((char *)nh);
    mfence();

    // put hint in free lists
    lh = (list_head*)malloc(sizeof(list_head));
    index = getBestFit(size);
    lh->position = (uint64_t)(location - start_address);

#ifdef AVERAGE_WEAR_COUNT
    lh->wearcount = averageWearCount(location, size);
#else
    lh->wearcount = worstWearCount(location, size);
#endif
    
    // insert to the fit position of the related free_list
    if (!free_lists[index]) { // if the free_list is empty
        free_lists[index] = lh;
        lh->next = NULL;
    }
    else {
        list_head *tmp = free_lists[index];
        // if this list_head is the least allocated one, insert this list_head at the fisrt place
        if (tmp->wearcount >= lh->wearcount) { 
            lh->next = free_lists[index];
            free_lists[index] = lh;
            return;
        }
        list_head *prev;
        while (tmp && tmp->wearcount < lh->wearcount) {
            prev = tmp;
            tmp = tmp->next;
        }
        if (tmp) {
            prev->next = lh;
            lh->next = tmp;
        } else { // this list_head is the most allocated one, insert this list_head at the tail of the free_list
            prev->next = lh;
            lh->next = NULL;
        }
    }
}

// split free blocks and only keep the blocks allocated less than wear_count_limit times
static inline void splitAndInsertFreeBlocks(char *location, uint32_t size)
{
    ASSERT(!(size & BASE_SIZE_MASK));

    uint32_t index = (uint64_t)(location - start_address) / BASE_SIZE;
    uint32_t end = index + size / BASE_SIZE;
    uint32_t tmpIndex = index;
    uint32_t tmpSize;
    char *tmpLocation;
    uint32_t i;
    for (i = index; i < end; i++) {
        if (volatile_metadata_list[i]->WC >= wear_count_limit) {
            if (tmpIndex == i) 
                tmpIndex++;
            else {
                tmpLocation = OFFSET_TO_PTR(tmpIndex * BASE_SIZE);
                tmpSize = (i - tmpIndex) * BASE_SIZE;
                insertFreeLocation(tmpLocation, tmpSize);
                tmpIndex = i + 1;
            }
        }
    }
    if (tmpIndex != i) {
        tmpLocation = OFFSET_TO_PTR(tmpIndex * BASE_SIZE);
        tmpSize = (i - tmpIndex) * BASE_SIZE;
        insertFreeLocation(tmpLocation, tmpSize);
    }
}

// Given a size, the function returns a pointer to a free region of that size. The region's actual
// size (rounded to a  multiple of BASE_SIZE) is returned in the actualSize argument.
static char *getFreeLocation(uint32_t size, uint32_t *actSize) 
{
    int index = getBestFit(size);
    uint32_t actualSize;
    char *freeLocation = NULL;

    if (index < NR_SIZES) {
        actualSize = (index + 1) * BASE_SIZE;

        // find free space from the indexed free_list, if there is no list_head in the 
        // free_list, find from the larger free_list
        while (!freeLocation && index <= NR_SIZES) {
            if (!free_lists[index]) {
                index++;
                continue;
            }


            if (free_lists[index]->wearcount >= wear_count_limit) {
                index++;
                continue;
            }

            list_head *tmp = free_lists[index];
            uint64_t location = free_lists[index]->position;
            uint32_t free_space;

            header *hd = (header *)OFFSET_TO_PTR(location);
            
            //test that the free_space is correct
            ASSERT(hd->size < 0);
            if (index < NR_SIZES) {
                free_space = (index + 1) * BASE_SIZE;
                ASSERT(-hd->size == free_space);
            } else {
                ASSERT(-hd->size > NR_SIZES * BASE_SIZE);
                free_space = -hd->size;
            }

            free_lists[index] = free_lists[index]->next;
            free(tmp);

            // if the free_space is larger than actualSize, split the free_space
            if (free_space > actualSize) {
                char *forwardLocation = OFFSET_TO_PTR(location + actualSize);
                uint32_t size = free_space - actualSize;
                insertFreeLocation(forwardLocation, size);
            }
            freeLocation = OFFSET_TO_PTR(location);
        }

    } else {
        if (size & BASE_SIZE_MASK) {
            actualSize = (size & ~BASE_SIZE_MASK) + BASE_SIZE;
        } else {
            actualSize = size;
        }

        // find free location from the last free_list
        if (free_lists[NR_SIZES] && free_lists[NR_SIZES]->wearcount < wear_count_limit) {
            list_head *lh = free_lists[NR_SIZES];
            list_head *prevlh = NULL;
            do {
                header *hd = OFFSET_TO_PTR(lh->position);

                ASSERT(-hd->size > NR_SIZES * BASE_SIZE);
    
                if (-hd->size >= actualSize) {
                    if (!prevlh) { // the lh is the first list_head in this free_list
                        if (lh->next)
                            free_lists[NR_SIZES] = lh->next;
                        else   
                            free_lists[NR_SIZES] = NULL;
                    } else {
                        if (lh->next)
                            prevlh->next = lh->next;
                        else 
                            prevlh->next = NULL;
                    }
                    
                    // if the free_space is larger than actualSize, split the free_space
                    if (-hd->size > actualSize) {
                        char *forwardLocation = OFFSET_TO_PTR(lh->position + actualSize);
                        uint32_t size = -hd->size - actualSize;
                        insertFreeLocation(forwardLocation, size);
                    }
                    freeLocation = OFFSET_TO_PTR(lh->position);

                    // free this list_head
                    free(lh);
                } else {
                    prevlh = lh;
                    lh = lh->next;
                }
            } while (!freeLocation && lh);
        }
    }
    *actSize = actualSize;

    // can not find fit block in the free_lists, allocate memory at the free_zone
    if (!freeLocation) {
        if (free_zone + actualSize > end_address) {
            if (getMoreMemory(actualSize) < 0) {
                return NULL;
            }
        }
        freeLocation = free_zone;
        free_zone += actualSize;
    }

    makeOne((uint64_t)(freeLocation - start_address), actualSize);
    
    return freeLocation;
}

// Initialization function
void uwlalloc_init(int wearcount_limit) {
    wear_count_limit = wearcount_limit;
    int i;
#ifdef _GNU_SOURCE_
    start_address = (char*) mmap(NULL, NEW_ALLOC_PAGES * PAGE_SIZE, PROT_READ | PROT_WRITE,
                                 MAP_ANONYMOUS | MAP_PRIVATE, 0, 0);
#else
    start_address = (char*) mmap(NULL, NEW_ALLOC_PAGES * PAGE_SIZE, PROT_READ | PROT_WRITE,
                                 MAP_ANON | MAP_PRIVATE, 0, 0);
#endif
    if ((void *)start_address == MAP_FAILED) {
        perror("MAP FAILED");
    }
    nr_pages = NEW_ALLOC_PAGES;
    free_zone = start_address;
    end_address = start_address + NEW_ALLOC_PAGES * PAGE_SIZE;

    printf("uwlalloc_init mmap: %p ~ %p\n", start_address, end_address);

    // allocate memory for volatile_metadata_list
    volatile_metadata_list_size = NEW_ALLOC_PAGES * PAGE_SIZE / BASE_SIZE;
    volatile_metadata_list = (volatile_metadata **)malloc(volatile_metadata_list_size * sizeof(volatile_metadata *));
    void *volatile_metadata_start_addr = malloc(volatile_metadata_list_size * sizeof(volatile_metadata));
    for (int i = 0; i < volatile_metadata_list_size; i++) {
        volatile_metadata_list[i] = (volatile_metadata *)((volatile_metadata *)volatile_metadata_start_addr + i);
        volatile_metadata_list[i]->state = 0;
        volatile_metadata_list[i]->WC = 0;
    }

    // initialize free_list
    for (i = 0; i <= NR_SIZES; i++) {
        free_lists[i] = NULL;
    } 
}

void uwlalloc_exit(void)
{
    if (munmap((void*) start_address, nr_pages)) {
        perror("MUNMAP FAILED");
    }
}

void *uwlalloc(uint32_t size) 
{
    char *location;
    uint32_t actualSize = 0;
    location = getFreeLocation(size + sizeof(header), &actualSize);

    if (!location) {
        return NULL;
    }

    ((header *) location)->size = actualSize;

    addMetadataWearCount((uint64_t)(location - start_address), actualSize / BASE_SIZE);
    
    return (void *)(location + sizeof(header));
}

int uwlfree(void *addr) 
{
    char *location = ((char *)addr) - sizeof(header);
    uint32_t size;
    if (((header *)location)->size <= 0) {
        fprintf(stderr, "Header corruption detected!\n");
        exit(-1);
    }

    size = (uint32_t)(((header *)location)->size);

//     // if the wearcount is large than wear_count_limit, do not release the memory
//     uint32_t wearcount;
// #ifdef AVERAGE_WEAR_COUNT
//     wearcount = averageWearCount(location, size);
// #else
//     wearcount = worstWearCount(location, size);
// #endif
//     if (wearcount >= wear_count_limit)
//         return;

    extendFreeLocation(&location, &size);
    splitAndInsertFreeBlocks(location, size); 
}

void uwlalloc_print(void) 
{
    unsigned i;

    for (i = 0; i < (end_address - start_address) / BASE_SIZE; i++) {
        if (!(i % (PAGE_SIZE / BASE_SIZE))) {
            printf("\n");
        }
        if (i >= (free_zone - start_address) / BASE_SIZE) {
            printf(" f ");
        } else if (volatile_metadata_list[i]->state) {
            printf(" o ");
        } else {
            printf(" _ ");
        }
    }
    printf("\n");

    for (i = 0; i < NR_SIZES; i++) {
        list_head *lh;
        printf("List %u: ", i);
        lh = free_lists[i];
        while (lh != NULL) {
            printf("%llu -> ", lh->position / BASE_SIZE);
            lh = lh->next;
        }
        printf("NULL\n");
    }
}

void uwlalloc_wearcount_print(void)
{
    unsigned i;

    for (i = 0; i < (end_address - start_address) / BASE_SIZE; i++) {
        if (!(i % (PAGE_SIZE / BASE_SIZE))) {
            printf("\n");
        }
        printf(" %d ", volatile_metadata_list[i]->WC);
    }
    printf("\n");
}