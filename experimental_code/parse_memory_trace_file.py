# 'Start main 140729095564408'
def parse_start_operands(operands):
    main, stack_pointer = operands
    return main, int(stack_pointer)


# 'Call main .plt 140729095564096'
# 'Indirect_Call _IO_new_do_write _IO_new_file_write 140720391870592'
# 'Jmp_Call .plt .plt 140734010193344'
def parse_call_indirect_call_jmp_call_operands(operands):
    caller_name, callee_name, stack_pointer = operands
    return caller_name, callee_name, int(stack_pointer)


# 'Return __strlen_avx2 140729095564088'
def parse_return_operands(operands):
    routine_name, stack_pointer = operands
    return routine_name, int(stack_pointer)


# 'R 140734010193936 4'
# 'W 140734010194080 8'
def parse_r_w_operands(operands):
    address, size = operands
    return int(address), int(size)


parse_operands_dispatch_table = {
    'Start': parse_start_operands,
    'Call': parse_call_indirect_call_jmp_call_operands,
    'Indirect_Call': parse_call_indirect_call_jmp_call_operands,
    'Jmp_Call': parse_call_indirect_call_jmp_call_operands,
    'Return': parse_return_operands,
    'R': parse_r_w_operands,
    'W': parse_r_w_operands
}


def parse_memory_trace_file(memory_trace_file_path):
    fp = open(memory_trace_file_path, 'r')
    for line in fp:
        # Split line into tokens
        tokens = line.split()
        
        # Process tokens
        operator, *operands = tokens

        # Yield tokens
        yield operator, parse_operands_dispatch_table[operator](operands)
