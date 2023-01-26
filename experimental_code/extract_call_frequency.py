from collections import Counter


def extract_call_frequency(memtrace_record_iterable):
    call_frequency = Counter()

    for operator, operands in memtrace_record_iterable:
        if operator == 'Call' or operator == 'Indirect_Call':
            function_name = operands[1]
            call_frequency[function_name] += 1
    
    return call_frequency

