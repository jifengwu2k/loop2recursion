def get_function_to_shift_stack_frame(stack_frame_shifts):
    def shift_stack_frame(stack_frame):
        nonlocal stack_frame_shifts
        stack_frame_shift = stack_frame_shifts[stack_frame['id']]
        
        new_stack_frame = stack_frame.copy()
        new_stack_frame['start_address'] += stack_frame_shift
        new_stack_frame['end_address'] += stack_frame_shift
        
        return new_stack_frame
    
    return shift_stack_frame

