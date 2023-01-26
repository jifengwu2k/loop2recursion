from ctypes import *

import os
import os.path


uwlalloc_so = CDLL(
    os.path.join(
        os.path.dirname(os.path.abspath(__file__)),
        'libuwlalloc.so'
    )
)

init = uwlalloc_so.uwlalloc_init
init.argtypes = [c_int]

exit = uwlalloc_so.uwlalloc_exit

alloc = uwlalloc_so.uwlalloc
alloc.argtypes = [c_uint]
alloc.restype = c_void_p

free = uwlalloc_so.uwlfree
free.argtypes = [c_void_p]

