# بسم الله الرحمن الرحيم
# references:
# https://stackoverflow.com/questions/14267555/find-the-smallest-power-of-2-greater-than-or-equal-to-n-in-python
# http://csillustrated.berkeley.edu/PDFs/handouts/cache-3-associativity-handout.pdf
# https://courses.cs.washington.edu/courses/cse378/02sp/sections/section9-3.html

from ceil_log_2 import ceil_log_2
from smallest_power_of_2_greater_than_or_equal_to import smallest_power_of_2_greater_than_or_equal_to


def cache_coroutine(cache_set_coroutine_function, block_size_in_bytes, number_of_ways_of_associativity, number_of_cache_sets):
    # adjust values to powers of 2
    number_of_ways_of_associativity = smallest_power_of_2_greater_than_or_equal_to(number_of_ways_of_associativity)
    block_size_in_bytes = smallest_power_of_2_greater_than_or_equal_to(block_size_in_bytes)
    number_of_cache_sets = smallest_power_of_2_greater_than_or_equal_to(number_of_cache_sets)
    
    # address splitting and merging information and functions
    number_of_bits_in_offset = ceil_log_2(block_size_in_bytes)
    mask_to_extract_bits_in_offset_from_address = (1 << number_of_bits_in_offset) - 1
    
    number_of_bits_in_cache_set_index = ceil_log_2(number_of_cache_sets)
    mask_to_extract_cache_set_index_from_tag_and_cache_set_index = (1 << number_of_bits_in_cache_set_index) - 1
    
    def function_to_merge_address(tag, cache_set_index, offset):
        nonlocal number_of_bits_in_offset, mask_to_extract_bits_in_offset_from_address, number_of_bits_in_cache_set_index, mask_to_extract_cache_set_index_from_tag_and_cache_set_index
        
        address = tag
        address <<= number_of_bits_in_cache_set_index
        address += (cache_set_index & mask_to_extract_cache_set_index_from_tag_and_cache_set_index)
        address <<= number_of_bits_in_offset
        address += (offset & mask_to_extract_bits_in_offset_from_address)
        
        return address
    
    # create cache_set_coroutine_list and activate each cache_set_coroutine
    cache_set_coroutine_list = [ cache_set_coroutine_function(number_of_ways_of_associativity) for _ in range(number_of_cache_sets) ]
    for cache_set_coroutine in cache_set_coroutine_list:
        next(cache_set_coroutine)
    
    # receive address, size, is_write
    # yields nothing
    address, size, is_write = yield
    
    while True:
        # strip offset from address
        inclusive_start_address = address
        inclusive_end_address = address + size - 1

        inclusive_start_tag_and_cache_set_index = inclusive_start_address >> number_of_bits_in_offset
        inclusive_end_tag_and_cache_set_index = inclusive_end_address >> number_of_bits_in_offset
        exclusive_end_tag_and_cache_set_index = inclusive_end_tag_and_cache_set_index + 1
        
        # iterate over all `tag_and_cache_set_index`'es
        for tag_and_cache_set_index in range(inclusive_start_tag_and_cache_set_index, exclusive_end_tag_and_cache_set_index):
            # split to `tag` and `cache_set_index`
            cache_set_index = tag_and_cache_set_index & mask_to_extract_cache_set_index_from_tag_and_cache_set_index
            tag = tag_and_cache_set_index >> number_of_bits_in_cache_set_index
            
            # send (tag, is_write) to the appropriate cache_set_coroutine
            cache_hit, victim_tag, writeback_required = cache_set_coroutine_list[cache_set_index].send((tag, is_write))
            
            # create read_address if not cache_hit
            if not cache_hit:
                read_address = function_to_merge_address(tag, cache_set_index, 0)
            else:
                read_address = None

            # create writeback_address if (victim_tag is not None) and writeback_required
            if (victim_tag is not None) and writeback_required:
                writeback_address = function_to_merge_address(victim_tag, cache_set_index, 0)
            else:
                writeback_address = None
        
        # receive address, size, is_write
        # yield read_address, writeback_address, block_size_in_bytes
        address, size, is_write = yield read_address, writeback_address, block_size_in_bytes
