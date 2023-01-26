from collections import Counter

from cache_coroutine import cache_coroutine
from handle_return_value_of_generator import handle_return_value_of_generator
from lru_cache_set_coroutine import lru_cache_set_coroutine
from parse_memory_trace_file import parse_memory_trace_file
from filter_reads_and_writes_in_memtrace_record_iterable_with_cache_coroutine import filter_reads_and_writes_in_memtrace_record_iterable_with_cache_coroutine


memory_trace_file_path = '../memtrace.out'

no_cache_counter = Counter()
for operator, operands in parse_memory_trace_file(memory_trace_file_path):
    no_cache_counter[operator] += 1

print(no_cache_counter)

cache = cache_coroutine(
    lru_cache_set_coroutine,
    block_size_in_bytes=16,
    number_of_ways_of_associativity=64,
    number_of_cache_sets=4
)
next(cache)


def cache_hit_rate(args):
    cache_hits, cache_misses = args
    print({'cache_hits': cache_hits, 'cache_misses': cache_misses})


with_cache_counter = Counter()
for operator, operands in handle_return_value_of_generator(
        filter_reads_and_writes_in_memtrace_record_iterable_with_cache_coroutine(
            parse_memory_trace_file(memory_trace_file_path),
            cache
        ),
    cache_hit_rate
):
    with_cache_counter[operator] += 1

print(with_cache_counter)
