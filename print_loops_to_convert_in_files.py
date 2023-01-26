import argparse
import json
from sys import stdin, stdout


def basic_block_object_induces_excessive_stack_writes(basic_block_object, non_builtin_functions):
    #has_function_calls = any((i in non_builtin_functions for i in basic_block_object['function_calls']))
    has_function_calls = len(basic_block_object['function_calls'])
    number_of_spills = basic_block_object['number_of_spills']
    
    if 'number_of_writebacks' in basic_block_object:
        number_of_writebacks = basic_block_object['number_of_writebacks']
        return has_function_calls or (number_of_writebacks > 2 * number_of_spills)
    else:
        return has_function_calls or (number_of_spills > 0)


def iterate_loops_to_convert_in_function_object(function_object, non_builtin_functions):
    loop_tree = function_object['loop_tree']
    loops_and_basic_blocks = function_object['loops_and_basic_blocks']
    basic_blocks = function_object['basic_blocks']
    
    def query_basic_block_object(basic_block):
        nonlocal basic_blocks
        for basic_block_object in basic_blocks:
            if basic_block_object['name'] == basic_block:
                return basic_block_object
    
    def should_convert_loop(loop):
        nonlocal loops_and_basic_blocks, query_basic_block_object
        
        basic_block_objects_in_loop = (
            query_basic_block_object(basic_block)
            for basic_block in loops_and_basic_blocks[loop]
        )
        
        return any(
            (
                basic_block_object_induces_excessive_stack_writes(basic_block_object, non_builtin_functions)
                for basic_block_object in basic_block_objects_in_loop
            )
        )
    
    def recursive_generator(loop_tree):
        nonlocal should_convert_loop
        for key, value in loop_tree.items():
            if should_convert_loop(key):
                yield key
                # if value:
                #    yield from recursive_generator(value)
    
    yield from recursive_generator(loop_tree)


def get_loops_to_convert_in_file_object(file_object, non_builtin_functions):
    loops_to_convert = []
    for function_object in file_object['functions']:
        loops_to_convert.extend(iterate_loops_to_convert_in_function_object(function_object, non_builtin_functions))
    return loops_to_convert


def parse_command_line_arguments():
    parser = argparse.ArgumentParser()
    parser.add_argument('--loop-information', type=str, required=True, help='JSON file containing loop information')    
    args = parser.parse_args()

    loop_information_path = args.loop_information
    with open(loop_information_path, 'r') as fp:
        loop_information = json.load(fp)
    
    return loop_information


if __name__ == '__main__':
    loop_information = parse_command_line_arguments()
    
    all_function_names = {
        function_object['name']
        for file_object in loop_information
        for function_object in file_object['functions']
    }
    
    def query_file_object(file):
        global loop_information
        for file_object in loop_information:
            if file_object['name'] == file:
                return file_object

    for filename_with_newline in stdin:
        filename = filename_with_newline[:-1]
        file_object = query_file_object(filename)
        if file_object is not None:
            loops_to_convert = get_loops_to_convert_in_file_object(file_object, all_function_names)
        else:
            loops_to_convert = []
        print(json.dumps(loops_to_convert), file=stdout)
