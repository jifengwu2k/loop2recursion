def filter_reads_and_writes_in_memtrace_record_iterable_with_cache_coroutine(memtrace_record_iterable, cache_coroutine):
    number_of_hits = 0
    number_of_misses = 0

    send_to_cache_coroutine = cache_coroutine.send

    for operator, operands in memtrace_record_iterable:
        if operator in ('R', 'W'):
            address, size = operands
            is_write = operator == 'W'

            # address, size, is_write = yield read_address, writeback_address, block_size_in_bytes
            read_address, writeback_address, block_size_in_bytes = send_to_cache_coroutine((address, size, is_write))

            # read_address is None, cache hit
            if read_address is None:
                number_of_hits += 1
            # read_address is not None, cache miss
            else:
                number_of_misses += 1

                yield 'R', (read_address, block_size_in_bytes)

                if writeback_address is not None:
                    yield 'W', (writeback_address, block_size_in_bytes)
        
        else:
            yield operator, operands
    
    return number_of_hits, number_of_misses
