#ifndef _UWLALLOC_H
#define _UWLALLOC_H

#ifdef __cplusplus
extern "C" {
#endif

void uwlalloc_init(int wearcount_limit);
void uwlalloc_exit(void);
void *uwlalloc(unsigned size);
int uwlfree(void *addr);
void uwlalloc_print(void);
void uwlalloc_wearcount_print(void);


#ifdef __cplusplus
}
#endif

#endif