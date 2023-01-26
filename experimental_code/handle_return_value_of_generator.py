# A light-weight way to handle the return value (one that doesn't involve instantiating an auxiliary class) is to use dependency injection.
# Namely, one can pass in the function to handle / act on the return value using the following wrapper / helper generator function.
# Credits: https://stackoverflow.com/a/41875793/19303695
def handle_return_value_of_generator(g, f):
    return_value = yield from g
    f(return_value)
