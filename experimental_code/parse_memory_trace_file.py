def parse_memory_trace_file(memory_trace_file_path):
    fp = open(memory_trace_file_path, 'r')
    for line in fp:
        # Ignore lines beginning with '#'
        if line.startswith('#'):
            continue
        # Split line into tokens
        tokens = line.split()
        # Yield tokens
        yield tokens

