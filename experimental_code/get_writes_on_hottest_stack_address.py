#!/usr/bin/env python3

import argparse
import itertools
import json

from extract_writes import extract_writes
from extract_writes_in_stack_frames import extract_writes_in_stack_frames
from parse_memory_trace_file import parse_memory_trace_file
from vector import vector

import numpy as np


def yield_addresses_and_writes(address_and_size_iterator):
    critical_addresses = vector((1024, 3), int)
    critical_addresses_append = critical_addresses.append
    for write_id, (address, size) in enumerate(address_and_size_iterator):
        # address, is_start, write_id
        critical_addresses_append((address + size, True, write_id))
        critical_addresses_append((address, False, write_id))
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
    parser.add_argument('--stack-address-lower-bound', type=int, required=False, default=0x700000000000, help='stack address lower bound (all stack addresses are greater than this value)')
    parser.add_argument('--stack-frame-shifts', type=str, required=False, default='', help='JSON file containing a list of how much to shift each stack frame by (such as [0, -1200], which means shift first stack frame by 0, and second stack frame by -1200). Used for UWLalloc.')
    
    args = parser.parse_args()

    input_memtrace_file_path = args.input
    output_json_file_path = args.output
    stack_address_lower_bound = args.stack_address_lower_bound
    
    if args.stack_frame_shifts:
        with open(args.stack_frame_shifts, 'r') as fp:
            stack_frame_shifts = json.load(fp)
    else:
        stack_frame_shifts = None

    return input_memtrace_file_path, output_json_file_path, stack_address_lower_bound, stack_frame_shifts


def main():
    input_memtrace_file_path, output_json_file_path, stack_address_lower_bound, stack_frame_shifts = parse_command_line_arguments()
    
    memtrace_record_iterable = parse_memory_trace_file(input_memtrace_file_path)

    if stack_frame_shifts:
        writes_in_stack_frames = extract_writes_in_stack_frames(memtrace_record_iterable, stack_address_lower_bound)
        addresses_and_sizes = (
            (address + stack_frame_shifts[frame_id], size)
            for address, size, frame_id in writes_in_stack_frames
        )
    else:
        all_addresses_and_sizes = extract_writes(memtrace_record_iterable)
        addresses_and_sizes = (
            (address, size)
            for address, size in all_addresses_and_sizes
            if address > stack_address_lower_bound
        )
    
    addresses_and_writes = vector((1024, 2), int)
    addresses_and_writes_append = addresses_and_writes.append
    for address_writes_tuple in yield_addresses_and_writes(addresses_and_sizes):
        addresses_and_writes_append(address_writes_tuple)
    addresses_and_writes = addresses_and_writes.get()
    
    np.save(output_json_file_path + '.npy', addresses_and_writes)
    
    writes = int(np.max(addresses_and_writes[:, 1]))
    mean = int(np.mean(addresses_and_writes[:, 1]))
    median = int(np.median(addresses_and_writes[:, 1]))
    std = int(np.std(addresses_and_writes[:, 1]))
    
    with open(output_json_file_path, 'w') as fp:
        json.dump({'writes': writes, 'mean': mean, 'median': median, 'std': std}, fp)


if __name__ == '__main__':
    main()

