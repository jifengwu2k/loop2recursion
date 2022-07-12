#                                               -*- Autoconf -*-
# Process this file with autoconf to produce a configure script.

AC_PREREQ([2.69])
AC_INIT([uwlalloc], [0.1], [weli@whu.edu.cn])
AM_INIT_AUTOMAKE([foreign])
AC_CONFIG_SRCDIR([lib/])
AC_CONFIG_HEADERS([config.h])

# Checks for programs.
AC_PROG_CXX
AC_PROG_CC

#AC_PROG_LIBTOOL
AC_PROG_RANLIB

# Checks for libraries.

# Checks for header files.
AC_CHECK_HEADERS([fcntl.h stdint.h stdlib.h string.h sys/mman.h smmintrin.h])

# Checks for typedefs, structures, and compiler characteristics.
AC_HEADER_STDBOOL
AC_C_INLINE
AC_TYPE_SIZE_T
AC_TYPE_SSIZE_T
AC_STRUCT_ST_BLOCKS
AC_TYPE_UINT16_T
AC_TYPE_UINT32_T
AC_TYPE_UINT64_T
AC_TYPE_UINT8_T

# Checks for library functions.
AC_FUNC_MMAP
AC_CHECK_FUNCS([gettimeofday memset munmap])

CFLAGS="$CFLAGS -g -O0 -DDEBUG -msse4.2 -Wall -Wextra -Wno-unused-parameter -Wno-unused-variable"

AC_CONFIG_FILES([Makefile
                 lib/Makefile])

AC_OUTPUT
