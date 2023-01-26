import math


def ceil_log_2(x):
    # convert to int
    x = math.ceil(x)
    
    # adjust if smaller than 1
    if x < 1:
        x = 1
    
    return (x - 1).bit_length()

