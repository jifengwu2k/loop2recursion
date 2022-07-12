#ifndef WALK_TREE_OF_LOOPS_BOTTOM_UP_HPP
#define WALK_TREE_OF_LOOPS_BOTTOM_UP_HPP

/**
 * بسم الله الرحمن الرحيم
 * 
 * File: walk_tree_of_loops_bottom_up.hpp
 * Author: Abbas Wu
 * 
 * Copyright (C) 2022 Abbas Wu.
 * Distributed under the MIT License.
 */

// for llvm::Loop
#include <llvm/Analysis/LoopInfo.h>

// Walk a tree of LLVM loops bottom-up, calling a callback functor for each loop
template <typename Callback> void walk_tree_of_loops_bottom_up(llvm::Loop* pointer_to_root, const Callback& callback) {
    if (pointer_to_root) {
        // Use recursion to implement bottom-up walking 
        for (llvm::Loop* pointer_to_subloop: pointer_to_root->getSubLoops()) {
            walk_tree_of_loops_bottom_up(pointer_to_subloop, callback);
        }
        // After finishing calling the callback for each of the loops in the subtree underneath the root, call the callback for the root
        callback(pointer_to_root);
    }
}

#endif
