#!/usr/bin/env python3

import argparse
from collections import Counter
import itertools
import json

from intervaltree import IntervalTree

from cache_coroutine import cache_coroutine
from handle_return_value_of_generator import handle_return_value_of_generator
from lru_cache_set_coroutine import lru_cache_set_coroutine


def parse_records_from_memory_operations_log_file(memory_operations_log_file):
    with open(memory_operations_log_file, 'r') as fp:
        for line in fp:
            if line:
                operator, instruction_address, address, size = line.split()
                yield operator, int(instruction_address), int(address), int(size)


def filter_writes_in_memory_operations_record_iterable_with_cache_coroutine(memory_operations_record_iterable, cache_coroutine, stack_address_lower_bound):
    send_to_cache_coroutine = cache_coroutine.send

    for operator, instruction_address, address, size in memory_operations_record_iterable:
        is_write = operator == 'W'

        # address, size, is_write = yield read_address, writeback_address, block_size_in_bytes
        read_address, writeback_address, block_size_in_bytes = send_to_cache_coroutine((address, size, is_write))
        
        # read_address is not None, cache miss
        if read_address is not None:
            if writeback_address is not None:
                if writeback_address > stack_address_lower_bound:
                    yield 'W', instruction_address, writeback_address, block_size_in_bytes


def parse_command_line_arguments():
    parser = argparse.ArgumentParser()

    parser.add_argument('-i', '--input', type=str, required=True, help='input memory_operations_log file path')
    parser.add_argument('-o', '--output', type=str, required=True, help='output JSON file path')
    parser.add_argument('--static-loop-information', type=str, required=True, help='JSON file containing static loop information')
    parser.add_argument('--cache-sets', type=int, required=False, default=4, help='Number of cache sets within the cache (cache size = number of cache sets * number of ways of associativity * block size).')
    parser.add_argument('--associativity', type=int, required=False, default=64, help='Number of ways of associativity within the cache (cache size = number of cache sets * number of ways of associativity * block size).')
    parser.add_argument('--block-size', type=int, required=False, default=16, help='Block size in bytes (cache size = number of cache sets * number of ways of associativity * block size).')
    parser.add_argument('--stack-address-lower-bound', type=int, required=False, default=0x700000000000, help='stack address lower bound (all stack addresses are greater than this value)')
    
    args = parser.parse_args()

    input_memory_operations_log_file_path = args.input
    output_json_file_path = args.output

    static_loop_information_path = args.static_loop_information
    with open(static_loop_information_path, 'r') as fp:
        static_loop_information = json.load(fp)

        basic_block_address_interval_tree = IntervalTree.from_tuples(
            (
                (
                    basic_block_object['start_address'], basic_block_object['end_address'] + 1, (file_object['name'], function_object['name'], basic_block_object['name'])
                )
                for file_object in static_loop_information
                for function_object in file_object['functions']
                for basic_block_object in function_object['basic_blocks']
            )
        )

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

    return input_memory_operations_log_file_path, output_json_file_path, static_loop_information, basic_block_address_interval_tree, cache_coroutine_instance, stack_address_lower_bound


def main():
    input_memory_operations_log_file_path, output_json_file_path, static_loop_information, basic_block_address_interval_tree, cache_coroutine_instance, stack_address_lower_bound = parse_command_line_arguments()
    
    memory_operations_record_iterable = parse_records_from_memory_operations_log_file(input_memory_operations_log_file_path)

    filtered_memory_operations_record_iterable = filter_writes_in_memory_operations_record_iterable_with_cache_coroutine(
        memory_operations_record_iterable,
        cache_coroutine_instance,
        stack_address_lower_bound
    )

    writes_within_basic_blocks = Counter()

    for operator, instruction_address, address, size in filtered_memory_operations_record_iterable:
        basic_block_set = basic_block_address_interval_tree[instruction_address]
        if basic_block_set:
            basic_block = basic_block_set.pop().data
            writes_within_basic_blocks[basic_block] += 1
    
    for file_object in static_loop_information:
        for function_object in file_object['functions']:
            for basic_block_object in function_object['basic_blocks']:
                basic_block_tuple = (file_object['name'], function_object['name'], basic_block_object['name'])
                if basic_block_tuple in writes_within_basic_blocks:
                    basic_block_object['number_of_writebacks'] = writes_within_basic_blocks[basic_block_tuple]
                else:
                    basic_block_object['number_of_writebacks'] = 0

    with open(output_json_file_path, 'w') as fp:
        json.dump(static_loop_information, fp)


if __name__ == '__main__':
    main()

