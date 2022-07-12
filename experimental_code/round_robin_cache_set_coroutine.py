# بسم الله الرحمن الرحيم


def round_robin_cache_set_coroutine(associativity):
    # initialize tag_list and dirty_bit_list
    tag_list = [ None for _ in range(associativity) ]
    dirty_bit_list = [ False for _ in range(associativity) ]
    
    # initialize index_of_victim
    index_of_victim = 0
    
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
        
        except ValueError:
            # tag_index not found
            victim_tag = tag_list[index_of_victim]
            
            if dirty_bit_list[index_of_victim]:
                writeback_required = True
            
            tag_list[index_of_victim] = tag
            
            if is_write:
                dirty_bit_list[index_of_victim] = True
            else:
                dirty_bit_list[index_of_victim] = False
            
            # update index_of_victim
            index_of_victim = (index_of_victim + 1) % len(tag_list)
            
        # receive tag and is_write
        # yield (cache_hit, victim_tag, writeback_required)
        tag, is_write = yield (cache_hit, victim_tag, writeback_required)

