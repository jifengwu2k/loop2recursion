#!/usr/bin/env python3

'''
This Python script should be run from a Shell script by piping output from `lldb --batch -o "disassemble --name '$FUNCTION'" "$OBJECT_FILE"`.
For example: `lldb --batch -o "disassemble --name 'main'" "basicmath_small" | python3 -u parse_lldb_function_disassembly.py`.

It writes a JSON array containing the addresses of all instructions to stdout.

Example:

'''
# lldb --batch -o 'disassemble --name rad2deg' '/media/abbas/Windows/Users/abbas/Desktop/revision/loop2recursion/benchmark_intermediate_representations/baseline/basicmath/basicmath'

from json import dump
from re import compile
from sys import stdin, stdout

# Credits:
# https://regex101.com/
instruction_record_matching_regex = compile(r'(.*)\[(.*)\] <\+(\d+)>:\W*(.*)\W*')


def filter_valid_instructions(lines):
    for line in lines:
        match = instruction_record_matching_regex.match(line)
        if match is not None:
            # file_name, address, offset, instruction
            yield match.groups()


if __name__ == '__main__':
    dump(
        [
            int(address, base=16)
            for file_name, address, offset, instruction in filter_valid_instructions(stdin)
        ],
        stdout
    )
    stdout.write('\n')

