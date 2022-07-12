from collections import Counter

from extract_call_stacks import extract_call_frequency


def extract_call_frequency(input_memtrace_file_path):
    call_frequency = Counter()

    for operator, *operands in parse_memory_trace_file(input_memtrace_file_path):
        if operator == 'Call' or operator == 'Indirect_Call':
            # 函数名
            function_name = operands[2]
            call_frequency[function_name] += 1
    
    return call_frequency

