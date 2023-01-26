/**
 * بسم الله الرحمن الرحيم
 * 
 * File: get_closest_matching_integer_type.cpp
 * Author: Abbas Wu
 * 
 * Copyright (C) 2022 Abbas Wu.
 * Distributed under the MIT License.
 */

#include <cassert>

#include <limits>

#include "get_closest_matching_integer_type.h"


llvm::IntegerType* get_closest_matching_integer_type(llvm::LLVMContext& context, const size_t integer) {
    llvm::IntegerType* closest_matching_integer_type = nullptr;
    if (integer <= std::numeric_limits<uint8_t>::max()) {
        closest_matching_integer_type = llvm::Type::getInt8Ty(context);
    }
    else if (integer <= std::numeric_limits<uint16_t>::max()) {
        closest_matching_integer_type = llvm::Type::getInt16Ty(context);
    }
    else if (integer <= std::numeric_limits<uint32_t>::max()) {
        closest_matching_integer_type = llvm::Type::getInt32Ty(context);
    }
    else if (integer <= std::numeric_limits<uint64_t>::max()) {
        closest_matching_integer_type = llvm::Type::getInt64Ty(context);
    }
    else {
        assert(false && "integer > std::numeric_limits<uint64_t>::max() unsupported");
    }
    return closest_matching_integer_type;
}
