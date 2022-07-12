#ifndef GET_CLOSEST_MATCHING_INTEGER_TYPE_H
#define GET_CLOSEST_MATCHING_INTEGER_TYPE_H

/**
 * بسم الله الرحمن الرحيم
 * 
 * File: get_closest_matching_integer_type.h
 * Author: Abbas Wu
 * 
 * Copyright (C) 2022 Abbas Wu.
 * Distributed under the MIT License.
 */

#include <cstddef>

#include <llvm/IR/LLVMContext.h>
#include <llvm/IR/Type.h>


llvm::IntegerType* get_closest_matching_integer_type(llvm::LLVMContext& context, const size_t integer);

#endif
