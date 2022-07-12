#ifndef UPDATE_SUCCESSORS_IF_HPP
#define UPDATE_SUCCESSORS_IF_HPP

/**
 * بسم الله الرحمن الرحيم
 * 
 * File: update_successors_if.hpp
 * Author: Abbas Wu
 * 
 * Copyright (C) 2022 Abbas Wu.
 * Distributed under the MIT License.
 */

// for llvm::BasicBlock
#include <llvm/IR/BasicBlock.h>
// for llvm::Instruction
#include <llvm/IR/Instructions.h>

// for llvm::dyn_cast
#include <llvm/Support/Casting.h>


template <typename Predicate> void update_successors_if(llvm::BasicBlock* basic_block, const Predicate& predicate, llvm::BasicBlock* new_successor) {
    llvm::Instruction* terminator = basic_block->getTerminator();

    if (llvm::BranchInst* branch_instruction = llvm::dyn_cast<llvm::BranchInst>(terminator)) {
        for (size_t i = 0, number_of_successors = branch_instruction->getNumSuccessors(); i < number_of_successors; ++i) {
            llvm::BasicBlock* successor = branch_instruction->getSuccessor(i);
            if (predicate(successor)) {
                branch_instruction->setSuccessor(i, new_successor);
            }
        }
    }
    else if (llvm::SwitchInst* switch_instruction = llvm::dyn_cast<llvm::SwitchInst>(terminator)) {
        for (llvm::SwitchInst::CaseIt case_iterator = switch_instruction->case_begin(), caseEnd = switch_instruction->case_end(); case_iterator != caseEnd; ++case_iterator) {
            llvm::BasicBlock* successor = case_iterator->getCaseSuccessor();
            if (predicate(successor)) {
                case_iterator->setSuccessor(new_successor);
            }
        }
    }
    else {
        assert(false && "Terminator of basic_block is neither a BranchInst nor a SwitchInst");
    }
}

#endif
