# Python Coroutine Based Cache Simulator

In this project, we simulate a CPU cache using Python coroutines.

Advantages:

- Short and clean code
- Easy to extend (support different replacement policies, etc.)

## Concepts and Their Relations

- `Cache`
- `Set`
- `Block`

`Cache`
- Each has `number_of_cache_sets` `Set`s
  - Each has `number_of_ways_of_associativity` `Block`s
    - Each has `block_size_in_bytes` bytes

## Modeling

- The whole cache is a coroutine receiving `(address, is_write)` tuples as input, and calculating `(cache_hit, writeback_address)` tuples as output.
  - It models **each set** as a coroutine receiving `(tag, is_write)` tuples as input, and calculating `(cache_hit, writeback_address)` tuples as output.
    - Different coroutine definitions for different replacement policies such as round-robin, LRU, etc.

## Example

(taken from https://courses.cs.washington.edu/courses/cse378/02sp/sections/section9-3.html)

Suppose our cache has only eight blocks and each block contains four words. The cache is 2-way set associative, so there are four sets of two blocks. The write policy is write-back and write-allocate. LRU replacement is used. Assume memory is initialized to zero.

```python
In [1]: from cache_coroutine import *

In [2]: from lru_cache_set_coroutine import *

In [3]: cache = cache_coroutine(lru_cache_set_coroutine, block_size_in_bytes=4*2, number_of_ways_of_associativity=2, number_of_cache_sets=4)
```
