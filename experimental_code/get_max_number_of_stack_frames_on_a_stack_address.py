#!/usr/bin/env python3

import argparse
import itertools
import json

from extract_updates_to_call_stacks import extract_updates_to_call_stacks
from parse_memory_trace_file import parse_memory_trace_file
from vector import vector

import numpy as np

import pdb


def yield_addresses_and_number_of_stack_frames(new_stack_frames):
    critical_addresses = vector((1024, 3), int)
    for frame in new_stack_frames:
        # address, is_start, frame
        critical_addresses.append((frame['start_address'], True, frame['id']))
        critical_addresses.append((frame['end_address'], False, frame['id']))
    # sort (in ascending order)
    indices = np.lexsort((critical_addresses[:,1], critical_addresses[:,0]))
    
    current_frame_ids = set()
    for address, tuples_on_address in itertools.groupby(
        (critical_addresses[i] for i in indices[::-1]),
        key=lambda x: x[0]
    ):
        for is_start, start_or_end_tuples in itertools.groupby(
            tuples_on_address,
            key=lambda x: x[1]
        ):
            if is_start:
                current_frame_ids.update(
                    (start_tuple[2] for start_tuple in start_or_end_tuples)
                )
            else:
                # Yield current address and number of stack frames before updating current_frame_ids
                yield int(address), len(current_frame_ids)
                
                for *_, frame_id in start_or_end_tuples:
                    current_frame_ids.remove(frame_id)


def parse_command_line_arguments():
    parser = argparse.ArgumentParser()

    parser.add_argument('-i', '--input', type=str, required=True, help='input memtrace file path')
    parser.add_argument('-o', '--output', type=str, required=True, help='output JSON file path')
    parser.add_argument('--stack-address-lower-bound', type=int, required=False, default=0x700000000000, help='stack address lower bound (all stack addresses are greater than this value)')
    
    args = parser.parse_args()

    input_memtrace_file_path = args.input
    output_json_file_path = args.output
    stack_address_lower_bound = args.stack_address_lower_bound

    return input_memtrace_file_path, output_json_file_path, stack_address_lower_bound


def main():
    input_memtrace_file_path, output_json_file_path, stack_address_lower_bound = parse_command_line_arguments()
    
    memtrace_record_iterable = parse_memory_trace_file(input_memtrace_file_path)

    new_stack_frames = (new_stack_frame for update in extract_updates_to_call_stacks(memtrace_record_iterable) for new_stack_frame in update)
    
    addresses_and_number_of_stack_frames = yield_addresses_and_number_of_stack_frames(new_stack_frames)
    
    address, number_of_stack_frames = max(
        itertools.takewhile(
            lambda x: x[0] > stack_address_lower_bound,
            addresses_and_number_of_stack_frames
        ),
        key=lambda x: x[1]
    )
    
    with open(output_json_file_path, 'w') as fp:
        json.dump({'address': address, 'number_of_stack_frames': number_of_stack_frames}, fp)


if __name__ == '__main__':
    main()

