# bismillahirrahmanirrahim

# 从一个文件中解析得到一个元组

from collections import Counter
import re
import json
import glob
import os
import os.path

import pandas as pd


# parse_benchmark_wearcounts_and_framecounts_file使用的模式
maximum_number_of_writes_on_a_memory_address_in_stack_frames_pattern = re.compile(r'Maximum writes inside frame: (\d+)')
maximum_number_of_stack_frames_allocated_on_a_memory_address_pattern = re.compile(r'maximum framecount: (\d+)')
number_of_writes_on_the_most_written_memory_address_among_the_entire_stack_area_pattern = re.compile(r'maximum wear: (\d+)')
stack_memory_footprint_pattern = re.compile(r'stack size: (\d+) bytes')

# parse_benchmark_cache_simulations_directory使用的模式
number_of_writes_on_the_most_written_memory_address_pattern = re.compile(r'# Worst written address: 0[xX][0-9a-fA-F]+ \((\d+)\)')
cache_hit_ratio_pattern = re.compile(r'# Total-Hits:\s+\d+\s+(\d+(\.\d+)?)%') # "# Total-Hits:            16775707   98.49%"

# parse_benchmark_cache_simulations_directory使用的模式
instruction_count_pattern = re.compile(r'Ins count: (\d+)')
write_instruction_count_pattern = re.compile(r'WriteIns count: (\d+)')

def parse_benchmark_wearcounts_and_framecounts_file(benchmark_wearcounts_and_framecounts_file_path):
    with open(benchmark_wearcounts_and_framecounts_file_path, 'r') as fp:
        # 读取文件各行
        lines = [line for line in fp]
        
        maximum_number_of_writes_on_a_memory_address_in_stack_frames_match = \
        maximum_number_of_writes_on_a_memory_address_in_stack_frames_pattern.match(lines[9])
        maximum_number_of_writes_on_a_memory_address_in_stack_frames_string, *_ = \
        maximum_number_of_writes_on_a_memory_address_in_stack_frames_match.groups()
        maximum_number_of_writes_on_a_memory_address_in_stack_frames = \
        int(maximum_number_of_writes_on_a_memory_address_in_stack_frames_string)
        
        maximum_number_of_stack_frames_allocated_on_a_memory_address_match = \
        maximum_number_of_stack_frames_allocated_on_a_memory_address_pattern.match(lines[6])
        maximum_number_of_stack_frames_allocated_on_a_memory_address_string, *_ = \
        maximum_number_of_stack_frames_allocated_on_a_memory_address_match.groups()
        maximum_number_of_stack_frames_allocated_on_a_memory_address = \
        int(maximum_number_of_stack_frames_allocated_on_a_memory_address_string)
        
        number_of_writes_on_the_most_written_memory_address_among_the_entire_stack_area_match = \
        number_of_writes_on_the_most_written_memory_address_among_the_entire_stack_area_pattern.match(lines[2])
        number_of_writes_on_the_most_written_memory_address_among_the_entire_stack_area_string, *_ = \
        number_of_writes_on_the_most_written_memory_address_among_the_entire_stack_area_match.groups()
        number_of_writes_on_the_most_written_memory_address_among_the_entire_stack_area = \
        int(number_of_writes_on_the_most_written_memory_address_among_the_entire_stack_area_string)
        
        stack_memory_footprint_match = \
        stack_memory_footprint_pattern.match(lines[1])
        stack_memory_footprint_string, *_ = \
        stack_memory_footprint_match.groups()
        stack_memory_footprint = \
        int(stack_memory_footprint_string)
        
        return (
            maximum_number_of_writes_on_a_memory_address_in_stack_frames, 
            maximum_number_of_stack_frames_allocated_on_a_memory_address,
            number_of_writes_on_the_most_written_memory_address_among_the_entire_stack_area,
            stack_memory_footprint
        )

def parse_json_format_profile_data_directory(directory, key_name):
    types = os.listdir(directory)
    
    for type in types:
        type_directory = os.path.join(directory, type)
        
        for benchmark in os.listdir(type_directory):
            if benchmark.endswith('.json'):
                benchmark_filepath = os.path.join(type_directory, benchmark)

                with open(benchmark_filepath, 'r') as fp:
                    benchmark_json_data = json.load(fp)

                    yield type, benchmark, benchmark_json_data[key_name]

def parse_benchmark_instruction_counts_directory(directory):
    types = os.listdir(directory)
    
    for type in types:
        type_directory = os.path.join(directory, type)
        
        for benchmark in os.listdir(type_directory):
            benchmark_filepath = os.path.join(type_directory, benchmark)
            
            with open(benchmark_filepath, 'r') as fp:
                content = fp.read()

                instruction_count = int(content)
                
                yield type, benchmark, instruction_count  

def parse_benchmark_cache_simulations_directory(directory):
    types = os.listdir(directory)
    
    for type in types:
        type_directory = os.path.join(directory, type)
        
        for benchmark in os.listdir(type_directory):
            benchmark_filepath = os.path.join(type_directory, benchmark)
            
            with open(benchmark_filepath, 'r') as fp:
                # 读取文件各行
                lines = [line for line in fp]
                
                number_of_writes_on_the_most_written_memory_address_match = \
                number_of_writes_on_the_most_written_memory_address_pattern.match(lines[19])
                number_of_writes_on_the_most_written_memory_address_string, *_ = \
                number_of_writes_on_the_most_written_memory_address_match.groups()
                number_of_writes_on_the_most_written_memory_address = int(number_of_writes_on_the_most_written_memory_address_string)
                
                cache_hit_ratio_match = \
                cache_hit_ratio_pattern.match(lines[13])
                cache_hit_ratio_string, *_ = \
                cache_hit_ratio_match.groups()
                cache_hit_ratio = float(cache_hit_ratio_string)
                
                yield type, benchmark, cache_hit_ratio

def parse_profile_data_in_directory_to_dataframe(parser, key_name, include_average=False):
    data = {
        'executable_type': [],
        'benchmark': [],
        key_name: []
    }
    
    for executable_type, benchmark, key_data in parser:
        data['executable_type'].append(executable_type)
        data['benchmark'].append(benchmark)
        data[key_name].append(key_data)
    
    if include_average:
        executable_types_to_key_data_sums = Counter()
        executable_types_to_number_of_benchmarks = Counter()
        
        for executable_type, key_data in zip(data['executable_type'], data[key_name]):
            executable_types_to_key_data_sums[executable_type] += key_data
            executable_types_to_number_of_benchmarks[executable_type] += 1
        
        for executable_type, key_data_sum in executable_types_to_key_data_sums.items():
            data['executable_type'].append(executable_type)
            data['benchmark'].append('average')
            data[key_name].append(key_data_sum / executable_types_to_number_of_benchmarks[executable_type])
    
    return pd.DataFrame(data)

