from bisect_right import bisect_right
from parse_memory_trace_file import parse_memory_trace_file


def extract_writes_in_stack_frames(input_memtrace_file_path, stack_address_lower_bound):
    stack = []
    top_of_stack = None
    current_id = 0

    for operator, *operands in parse_memory_trace_file(input_memtrace_file_path):
        # 'Start main 0x7ffe0bc02c78'
        if operator == 'Start':
            # 起始地址
            start_address = int(operands[1], base=16)

            # 修改栈顶栈帧
            top_of_stack = { 'id': current_id, 'function_name': 'main', 'start_address': start_address, 'end_address': start_address }

            # 将该栈帧对象压入栈中
            stack.append(top_of_stack)
            
            current_id += 1

        # 'Call main -> .plt 0x7ffe0bc02b40'
        # 'Indirect_Call _IO_new_do_write -> _IO_new_file_write 0x7ffc04f85880'
        elif operator == 'Call' or operator == 'Indirect_Call':
            # 函数名
            function_name = operands[2]

            # 起始地址
            start_address = int(operands[3], base=16)

            # 修改栈顶栈帧的截止地址
            if start_address < top_of_stack['end_address']:
                top_of_stack['end_address'] = start_address

            # 修改栈顶栈帧
            top_of_stack = { 'id': current_id, 'function_name': function_name, 'start_address': start_address, 'end_address': start_address }

            # 将该栈帧对象压入栈中
            stack.append(top_of_stack)
            
            current_id += 1
        
        # 'Return __strlen_avx2    0x7ffe0bc02b38'
        elif operator == 'Return':
            # 地址
            address = int(operands[1], base=16)

            # 修改栈顶栈帧的截止地址
            if address < top_of_stack['end_address']:
                top_of_stack['end_address'] = address

            # 将顶层栈帧从栈中弹出
            stack.pop()

            top_of_stack = stack[-1]
        
        elif operator == 'W':
            # 地址
            address = int(operands[0], base=16)
            
            # 大小
            size = int(operands[1], base=16)
            
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
            
