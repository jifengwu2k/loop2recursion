def extract_writes(memtrace_record_iterable):
    for operator, operands in memtrace_record_iterable:
        if operator == 'W':
            # 地址
            address = operands[0]
            
            # 大小
            size = operands[1]

            yield address, size
