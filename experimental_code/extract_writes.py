from parse_memory_trace_file import parse_memory_trace_file


def extract_writes(input_memtrace_file_path):
    for operator, *operands in parse_memory_trace_file(input_memtrace_file_path):
        if operator == 'W':
            # 地址
            address = int(operands[0], base=16)
            
            # 大小
            size = int(operands[1], base=16)

            yield address, size

