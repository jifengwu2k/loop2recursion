# بسم الله الرحمن الرحيم
# references:
# https://zhuanlan.zhihu.com/p/110407087


from collections import OrderedDict


def lru_cache_set_coroutine(associativity):
    # initialize tag_list and dirty_bit_list
    tag_list = [ None for _ in range(associativity) ]
    dirty_bit_list = [ False for _ in range(associativity) ]
    
    # initialize indices_in_lru_order
    indices_in_lru_order = OrderedDict()
    for index in range(associativity - 1, -1, -1):
        indices_in_lru_order[index] = None
    
    # receive first tag and is_write
    # yields nothing
    tag, is_write = yield
    
    while True:
        cache_hit = False
        victim_tag = None
        writeback_required = False
        
        try:
            # find tag_index
            tag_index = tag_list.index(tag)
            
            # tag_index found
            cache_hit = True
            
            if is_write:
                dirty_bit_list[tag_index] = True
            
            # move tag_index to the end of indices_in_lru_order
            indices_in_lru_order.move_to_end(tag_index)
        
        except ValueError:
            # tag_index not found
            
            # get index_of_victim from indices_in_lru_order
            index_of_victim, _ = indices_in_lru_order.popitem(last=False)
            
            victim_tag = tag_list[index_of_victim]
            
            if dirty_bit_list[index_of_victim]:
                writeback_required = True
            
            tag_list[index_of_victim] = tag
            
            if is_write:
                dirty_bit_list[index_of_victim] = True
            else:
                dirty_bit_list[index_of_victim] = False
            
            # insert index_of_victim to the end of indices_in_lru_order
            indices_in_lru_order[index_of_victim] = None
            
        # receive tag and is_write
        # yield (cache_hit, victim_tag, writeback_required)
        tag, is_write = yield (cache_hit, victim_tag, writeback_required)

