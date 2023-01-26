def reduce_coroutine(f):
    reduced = yield
    while True:
        input = yield reduced
        reduced = f(reduced, input)

