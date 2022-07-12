# بسم الله الرحمن الرحيم
# references:
# https://stackoverflow.com/questions/14267555/find-the-smallest-power-of-2-greater-than-or-equal-to-n-in-python
# http://csillustrated.berkeley.edu/PDFs/handouts/cache-3-associativity-handout.pdf
# https://courses.cs.washington.edu/courses/cse378/02sp/sections/section9-3.html

from ceil_log_2 import ceil_log_2
from smallest_power_of_2_greater_than_or_equal_to import smallest_power_of_2_greater_than_or_equal_to

    
# returns a pair of functions to convert an address to and from the following format:
# <tag> <cache_set_index> <offset>
def get_functions_to_split_and_merge_address(line_size, number_of_cache_sets):
    number_of_bits_in_offset = ceil_log_2(line_size)
    mask_to_extract_bits_in_offset_from_address = (1 << number_of_bits_in_offset) - 1
    
    number_of_bits_in_cache_set_index = ceil_log_2(number_of_cache_sets)
    mask_to_extract_cache_set_index_from_tag_and_cache_set_index = (1 << number_of_bits_in_cache_set_index) - 1
    
    def function_to_split_address(address):
        nonlocal number_of_bits_in_offset, mask_to_extract_bits_in_offset_from_address, number_of_bits_in_cache_set_index, mask_to_extract_cache_set_index_from_tag_and_cache_set_index
        
        offset = address & mask_to_extract_bits_in_offset_from_address
        tag_and_cache_set_index = address >> number_of_bits_in_offset
        cache_set_index = tag_and_cache_set_index & mask_to_extract_cache_set_index_from_tag_and_cache_set_index
        tag = tag_and_cache_set_index >> number_of_bits_in_cache_set_index
        
        return tag, cache_set_index, offset
    
    def function_to_merge_address(tag, cache_set_index, offset):
        nonlocal number_of_bits_in_offset, mask_to_extract_bits_in_offset_from_address, number_of_bits_in_cache_set_index, mask_to_extract_cache_set_index_from_tag_and_cache_set_index
        
        address = tag
        address <<= number_of_bits_in_cache_set_index
        address += (cache_set_index & mask_to_extract_cache_set_index_from_tag_and_cache_set_index)
        address <<= number_of_bits_in_offset
        address += (offset & mask_to_extract_bits_in_offset_from_address)
        
        return address
    
    return function_to_split_address, function_to_merge_address


def cache_coroutine(cache_set_coroutine_function, line_size, set_size, number_of_cache_sets):
    # adjust values to powers of 2
    set_size = smallest_power_of_2_greater_than_or_equal_to(set_size)
    line_size = smallest_power_of_2_greater_than_or_equal_to(line_size)
    number_of_cache_sets = smallest_power_of_2_greater_than_or_equal_to(number_of_cache_sets)
    
    # create cache_set_coroutine_list and activate each cache_set_coroutine
    cache_set_coroutine_list = [ cache_set_coroutine_function(set_size) for _ in range(number_of_cache_sets) ]
    for cache_set_coroutine in cache_set_coroutine_list:
        next(cache_set_coroutine)
    
    # get function_to_split_address and function_to_merge_address
    function_to_split_address, function_to_merge_address = get_functions_to_split_and_merge_address(
        line_size,
        number_of_cache_sets
    )
    
    # receive address, is_write
    # yields nothing
    address, is_write = yield
    
    while True:
        # splits address
        tag, cache_set_index, offset = function_to_split_address(address)
        
        # send (tag, is_write) to the appropriate cache_set_coroutine
        cache_hit, victim_tag, writeback_required = cache_set_coroutine_list[cache_set_index].send((tag, is_write))
        
        # create writeback_address if (victim_tag is not None) and writeback_required
        if (victim_tag is not None) and writeback_required:
            writeback_address = function_to_merge_address(victim_tag, cache_set_index, 0)
        else:
            writeback_address = None
        
        # receive address, is_write
        # yield cache_hit, writeback_address
        address, is_write = yield cache_hit, writeback_address
    
