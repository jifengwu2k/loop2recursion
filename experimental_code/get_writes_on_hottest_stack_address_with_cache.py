#!/usr/bin/env python3

import argparse
from collections import Counter
import itertools
import json

import numpy as np

from cache_coroutine import cache_coroutine
# from extract_writes import extract_writes
from extract_writes_in_stack_frames import extract_writes_in_stack_frames
from filter_reads_and_writes_in_memtrace_record_iterable_with_cache_coroutine import filter_reads_and_writes_in_memtrace_record_iterable_with_cache_coroutine
from handle_return_value_of_generator import handle_return_value_of_generator
from lru_cache_set_coroutine import lru_cache_set_coroutine
from parse_memory_trace_file import parse_memory_trace_file
from vector import vector


def yield_addresses_and_writes(address_and_size_iterator):
    critical_addresses = vector((1024, 3), int)
    for write_id, (address, size) in enumerate(address_and_size_iterator):
        # address, is_start, write_id
        critical_addresses.append((address + size, True, write_id))
        critical_addresses.append((address, False, write_id))
    # sort (in ascending order)
    indices = np.lexsort((critical_addresses[:,1], critical_addresses[:,0]))
    
    current_write_ids = set()
    for address, tuples_on_address in itertools.groupby((critical_addresses[i] for i in indices[::-1]), key=lambda x: x[0]):
        for is_start, start_or_end_tuples in itertools.groupby(tuples_on_address, key=lambda x: x[1]):
            if is_start:
                current_write_ids.update((start_tuple[2] for start_tuple in start_or_end_tuples))
            else:
                # Yield current address and number of writes before updating current_write_ids
                yield int(address), len(current_write_ids)
                
                for *_, write_id in start_or_end_tuples:
                    current_write_ids.remove(write_id)


def parse_command_line_arguments():
    parser = argparse.ArgumentParser()

    parser.add_argument('-i', '--input', type=str, required=True, help='input memtrace file path')
    parser.add_argument('-o', '--output', type=str, required=True, help='output JSON file path')
    parser.add_argument('--cache-sets', type=int, required=False, default=4, help='Number of cache sets within the cache (cache size = number of cache sets * number of ways of associativity * block size).')
    parser.add_argument('--associativity', type=int, required=False, default=64, help='Number of ways of associativity within the cache (cache size = number of cache sets * number of ways of associativity * block size).')
    parser.add_argument('--block-size', type=int, required=False, default=16, help='Block size in bytes (cache size = number of cache sets * number of ways of associativity * block size).')
    parser.add_argument('--stack-address-lower-bound', type=int, required=False, default=0x700000000000, help='stack address lower bound (all stack addresses are greater than this value)')
    parser.add_argument('--stack-frame-shifts', type=str, required=False, default='', help='JSON file containing a list of how much to shift each stack frame by (such as [0, -1200], which means shift first stack frame by 0, and second stack frame by -1200). Used for UWLalloc.')
    
    args = parser.parse_args()

    input_memtrace_file_path = args.input
    output_json_file_path = args.output

    number_of_cache_sets = args.cache_sets
    number_of_ways_of_associativity = args.associativity
    block_size_in_bytes = args.block_size

    cache_coroutine_instance = cache_coroutine(
        lru_cache_set_coroutine,
        block_size_in_bytes=block_size_in_bytes,
        number_of_ways_of_associativity=number_of_ways_of_associativity,
        number_of_cache_sets=number_of_cache_sets
    )
    next(cache_coroutine_instance)

    stack_address_lower_bound = args.stack_address_lower_bound
    
    if args.stack_frame_shifts:
        with open(args.stack_frame_shifts, 'r') as fp:
            stack_frame_shifts = json.load(fp)
    else:
        stack_frame_shifts = None

    return input_memtrace_file_path, output_json_file_path, cache_coroutine_instance, stack_address_lower_bound, stack_frame_shifts


R = Counter()

def extract_writes(memtrace_record_iterable, stack_address_lower_bound):
    stack = []
    top_of_stack = None
    allow_yield_on_return = True
    current_id = 0
    
    for operator, operands in memtrace_record_iterable:
        if operator == 'W':
            # 地址
            address = operands[0]
            
            # 大小
            size = operands[1]
            
            if address > stack_address_lower_bound:
                R[top_of_stack['function_name']] += 1
            
                yield (address, size)
        elif operator == 'Start':
            # 起始地址
            start_address = operands[1]

            # 修改栈顶栈帧
            top_of_stack = { 'id': current_id, 'function_name': 'main', 'start_address': start_address, 'end_address': start_address }

            # 将该栈帧对象压入栈中
            stack.append(top_of_stack)
            
            allow_yield_on_return = True
            
            current_id += 1

        # 'Call main .plt 140729095564096'
        # 'Indirect_Call _IO_new_do_write _IO_new_file_write 140720391870592'
        elif operator == 'Call' or operator == 'Indirect_Call':
            # 函数名
            function_name = operands[1]

            # 起始地址
            start_address = operands[2]

            # 修改栈顶栈帧的截止地址
            if start_address < top_of_stack['end_address']:
                top_of_stack['end_address'] = start_address

            # 修改栈顶栈帧
            top_of_stack = { 'id': current_id, 'function_name': function_name, 'start_address': start_address, 'end_address': start_address }

            # 将该栈帧对象压入栈中
            stack.append(top_of_stack)
            
            allow_yield_on_return = True
            
            current_id += 1
        
        # 'Return __strlen_avx2 140729095564088'
        elif operator == 'Return':
            # 地址
            address = operands[1]

            # 修改栈顶栈帧的截止地址
            if address < top_of_stack['end_address']:
                top_of_stack['end_address'] = address
                
            if allow_yield_on_return:
                allow_yield_on_return = False

            # 将顶层栈帧从栈中弹出
            stack.pop()

            top_of_stack = stack[-1]  

def main():
    input_memtrace_file_path, output_json_file_path, cache_coroutine_instance, stack_address_lower_bound, stack_frame_shifts = parse_command_line_arguments()
    
    memtrace_record_iterable = parse_memory_trace_file(input_memtrace_file_path)

    cache_hits = 0
    cache_misses = 0

    def set_cache_hits_and_cache_misses(argument_tuple):
        nonlocal cache_hits, cache_misses
        cache_hits, cache_misses = argument_tuple

    filtered_memtrace_record_iterable = handle_return_value_of_generator(
        filter_reads_and_writes_in_memtrace_record_iterable_with_cache_coroutine(
            memtrace_record_iterable,
            cache_coroutine_instance
        ),
        set_cache_hits_and_cache_misses
    )

    if stack_frame_shifts:
        writes_in_stack_frames = extract_writes_in_stack_frames(filtered_memtrace_record_iterable, stack_address_lower_bound)
        addresses_and_sizes = (
            (address + stack_frame_shifts[frame_id], size)
            for address, size, frame_id in writes_in_stack_frames
        )
    else:
        addresses_and_sizes = extract_writes(filtered_memtrace_record_iterable, stack_address_lower_bound)
    
    addresses_and_writes = vector((1024, 2), int)
    addresses_and_writes_append = addresses_and_writes.append
    for address_writes_tuple in yield_addresses_and_writes(addresses_and_sizes):
        addresses_and_writes_append(address_writes_tuple)
    addresses_and_writes = addresses_and_writes.get()
    
    np.save(output_json_file_path + '.npy', addresses_and_writes)
    
    if len(addresses_and_writes):
        writes = int(np.max(addresses_and_writes[:, 1]))
        mean = int(np.mean(addresses_and_writes[:, 1]))
        median = int(np.median(addresses_and_writes[:, 1]))
        std = int(np.std(addresses_and_writes[:, 1]))
    else:
        writes = 0
        mean = 0
        median = 0
        std = 0
        
    print(R)
    
    with open(output_json_file_path, 'w') as fp:
        json.dump({'writes': writes, 'mean': mean, 'median': median, 'std': std, 'cache_hits': cache_hits, 'cache_misses': cache_misses}, fp)


if __name__ == '__main__':
    main()

