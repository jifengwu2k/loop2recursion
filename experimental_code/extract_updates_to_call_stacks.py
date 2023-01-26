def extract_updates_to_call_stacks(memtrace_record_iterable):
    stack = []
    top_of_stack = None
    allow_yield_on_return = False
    current_id = 0
    first_index_of_new_stack_frames = 0

    for operator, operands in memtrace_record_iterable:
        # 'Start main 140729095564408'
        if operator == 'Start':
            # 起始地址
            start_address = operands[1]

            # 修改栈顶栈帧
            top_of_stack = { 'id': current_id, 'function_name': 'main', 'start_address': start_address, 'end_address': start_address }
            
            if not allow_yield_on_return:
                allow_yield_on_return = True
                first_index_of_new_stack_frames = len(stack)

            # 将该栈帧对象压入栈中
            stack.append(top_of_stack)
            
            current_id += 1

        # 'Call main .plt 140729095564096'
        # 'Indirect_Call _IO_new_do_write _IO_new_file_write 140720391870592'
        elif operator == 'Call' or operator == 'Indirect_Call':
            # 函数名
            function_name = operands[1]

            # 起始地址
            start_address = operands[2]

            # 修改栈顶栈帧的截止地址
            if start_address < top_of_stack['end_address']:
                top_of_stack['end_address'] = start_address

            # 修改栈顶栈帧
            top_of_stack = { 'id': current_id, 'function_name': function_name, 'start_address': start_address, 'end_address': start_address }

            if not allow_yield_on_return:
                allow_yield_on_return = True
                first_index_of_new_stack_frames = len(stack)
            
            # 将该栈帧对象压入栈中
            stack.append(top_of_stack)
            
            current_id += 1
        
        # 'Return __strlen_avx2 140729095564088'
        elif operator == 'Return':
            # 地址
            address = operands[1]

            # 修改栈顶栈帧的截止地址
            if address < top_of_stack['end_address']:
                top_of_stack['end_address'] = address
                
            if allow_yield_on_return:
                # 返回此时的栈
                yield stack[first_index_of_new_stack_frames:]
                allow_yield_on_return = False

            # 将顶层栈帧从栈中弹出
            stack.pop()

            top_of_stack = stack[-1]
