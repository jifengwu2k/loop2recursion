#ifndef ENUMERATE_AND_CALL_HPP
#define ENUMERATE_AND_CALL_HPP

/**
 * بسم الله الرحمن الرحيم
 * 
 * File: enumerate_and_call.hpp
 * Author: Abbas Wu
 * 
 * Copyright (C) 2022 Abbas Wu.
 * Distributed under the MIT License.
 */


template <typename Iterable, typename Callback> void enumerate_and_call(Iterable& iterable, const Callback& callback) {
    size_t index = 0;
    for (auto it = iterable.begin(), end = iterable.end(); it != end; ++it) {
        callback(index, *it);
        ++index;
    }
}

#endif
