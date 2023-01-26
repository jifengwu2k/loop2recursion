from bisect_right import bisect_right


def extract_writes_in_stack_frames(memtrace_record_iterable, stack_address_lower_bound):
    stack = []
    top_of_stack = None
    current_id = 0

    for operator, operands in memtrace_record_iterable:
        # 'Start main 140729095564408'
        if operator == 'Start':
            main, start_address = operands

            # 修改栈顶栈帧
            top_of_stack = { 'id': current_id, 'function_name': main, 'start_address': start_address, 'end_address': start_address }

            # 将该栈帧对象压入栈中
            stack.append(top_of_stack)
            
            current_id += 1

        # 'Call main .plt 140729095564096'
        # 'Indirect_Call _IO_new_do_write _IO_new_file_write 140720391870592'
        elif operator == 'Call' or operator == 'Indirect_Call':
            caller_name, callee_name, start_address = operands
            # internal function calls are not processed
            # assert top_of_stack['function_name'] might be faulty

            # 修改栈顶栈帧的截止地址
            if start_address < top_of_stack['end_address']:
                top_of_stack['end_address'] = start_address

            # 修改栈顶栈帧
            top_of_stack = { 'id': current_id, 'function_name': callee_name, 'start_address': start_address, 'end_address': start_address }

            # 将该栈帧对象压入栈中
            stack.append(top_of_stack)
            
            current_id += 1
        
        # 'Jmp_Call .plt .plt 140734010193344'
        elif operator == 'Jmp_Call':
            caller_name, callee_name, start_address = operands
            assert top_of_stack['function_name'] == caller_name
            top_of_stack['function_name'] = callee_name
        
        # 'Return __strlen_avx2 140729095564088'
        elif operator == 'Return':
            function_name, address = operands
            # internal function calls are not processed
            # assert top_of_stack['function_name'] might be faulty

            # 修改栈顶栈帧的截止地址
            if address < top_of_stack['end_address']:
                top_of_stack['end_address'] = address

            # 将顶层栈帧从栈中弹出
            stack.pop()

            top_of_stack = stack[-1]
        
        elif operator == 'W':
            address, size = operands
            
            start_write_address = address + size
            
            frame = None
            
            if stack[-1]['start_address'] >= start_write_address:
                frame = stack[-1]
            else:
                index = bisect_right(stack, -start_write_address, key=lambda frame: -frame['start_address']) - 1
                if index >= 0:
                    frame = stack[index]
                
            if frame:
                # 如果找到了，返回写信息和栈帧
                yield address, size, frame['id']
