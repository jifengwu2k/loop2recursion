from ceil_log_2 import ceil_log_2


def smallest_power_of_2_greater_than_or_equal_to(x):
    return 1 << ceil_log_2(x)

