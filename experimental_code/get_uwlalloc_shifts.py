#!/usr/bin/env python3

import argparse
import json

from extract_frame_ids_and_uwlalloc_shifts import extract_frame_ids_and_uwlalloc_shifts
from parse_memory_trace_file import parse_memory_trace_file


def parse_command_line_arguments():
    parser = argparse.ArgumentParser()

    parser.add_argument('-i', '--input', type=str, required=True, help='input memtrace file path')
    parser.add_argument('-o', '--output', type=str, required=True, help='JSON file containing a list of how much to shift each stack frame by (such as [0, -1200], which means shift first stack frame by 0, and second stack frame by -1200).')
    parser.add_argument('-w', '--wearcount-limit', type=int, required=False, default=300, help='UWLalloc wearcount limit')
    
    args = parser.parse_args()

    input_memtrace_file_path = args.input
    output_json_file_path = args.output
    wearcount_limit = args.wearcount_limit

    return input_memtrace_file_path, output_json_file_path, wearcount_limit


def main():
    input_memtrace_file_path, output_json_file_path, wearcount_limit = parse_command_line_arguments()

    memtrace_record_iterable = parse_memory_trace_file(input_memtrace_file_path)
    
    uwlalloc_shifts = [
        uwlalloc_shift
        for frame_id, uwlalloc_shift in extract_frame_ids_and_uwlalloc_shifts(memtrace_record_iterable, wearcount_limit)
    ]
    
    with open(output_json_file_path, 'w') as fp:
        json.dump(uwlalloc_shifts, fp)

if __name__ == '__main__':
    main()

