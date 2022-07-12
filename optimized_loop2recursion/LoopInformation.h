#ifndef LOOP_INFORMATION_H
#define LOOP_INFORMATION_H

/**
 * بسم الله الرحمن الرحيم
 * 
 * File: LoopInformation.h
 * Author: Abbas Wu
 * 
 * Copyright (C) 2022 Abbas Wu.
 * Distributed under the MIT License.
 */

// for std::string
#include <string>
// for std::unordered_map
#include <unordered_map>
// for std::unordered_set
#include <unordered_set>

// for llvm::Loop
#include <llvm/Analysis/LoopInfo.h>
// for llvm::Argument
#include <llvm/IR/Argument.h>
// for llvm::Function
#include <llvm/IR/Function.h>
// for llvm::LLVMContext
#include <llvm/IR/LLVMContext.h>
// for llvm::Instruction
#include <llvm/IR/Instructions.h>
// for llvm::BasicBlock
#include <llvm/IR/BasicBlock.h>
// for llvm::PointerType, llvm::StructType
#include <llvm/IR/DerivedTypes.h>


struct LoopInformation {
    // initialized in initializer list
    llvm::Loop* loop;
    llvm::Function* function;
    llvm::LLVMContext& context;
    llvm::Module* module;

    // initialized in analyze_loop_basic_structure
    llvm::BasicBlock* preheader;
    llvm::BasicBlock* header;
    std::unordered_set<llvm::BasicBlock *> latches;
    std::unordered_set<llvm::BasicBlock *> exiting_blocks;
    std::unordered_map<llvm::BasicBlock *, llvm::BasicBlock *> exiting_blocks_and_exit_blocks;
    std::unordered_set<llvm::BasicBlock *> exit_blocks;
    std::unordered_map<llvm::BasicBlock *, size_t> exit_blocks_and_ids;
    std::string loop_name;

    // initialized in analyze_phi_nodes_in_header
    std::unordered_set<llvm::PHINode *> phi_nodes_in_header;
    std::unordered_map<llvm::PHINode *, llvm::Type *> types_of_phi_nodes_in_header;
    std::unordered_map<llvm::PHINode *, size_t> indices_of_incoming_preheader_of_phi_nodes_in_header;
    std::unordered_map<llvm::PHINode *, llvm::Value *> values_of_incoming_preheader_of_phi_nodes_in_header;
    std::unordered_map<llvm::PHINode *, std::unordered_set<size_t>> indices_of_incoming_latches_of_phi_nodes_in_header;

    // initialized in analyze_captured_values
    std::unordered_set<llvm::Value *> captured_values;
    std::unordered_map<llvm::Instruction *, std::unordered_set<llvm::Value *>> instructions_and_captured_values_used;
    std::unordered_set<llvm::Instruction *> instructions_writing_memory;

    // initialized in analyze_pointers_writing_memory
    std::unordered_set<llvm::Value *> pointers_writing_memory;

    // initialized in analyze_return_values
    std::unordered_set<llvm::PHINode *> phi_nodes_in_exit_blocks;
    std::unordered_map<llvm::BasicBlock *, std::unordered_set<llvm::PHINode *>> exit_blocks_and_phi_nodes;

    // initialized in analyze_return_value_struct_type中
    bool use_return_value_struct;
    bool return_value_struct_contains_return_values;
    std::unordered_map<llvm::Value *, size_t> indices_of_return_values_in_return_value_struct;
    bool return_value_struct_contains_exit_block_id;
    llvm::IntegerType* exit_block_id_type;
    size_t index_of_exit_block_id_in_return_value_struct;
    llvm::StructType* return_value_struct_type;
    llvm::PointerType* pointer_to_return_value_struct_type;

    // initialized in analyze_recursion_state_struct_type
    llvm::StructType* recursion_state_struct_type;
    llvm::PointerType* pointer_to_recursion_state_struct_type;
    std::unordered_map<llvm::Value *, size_t> indices_of_loop_variables_in_recursion_state_struct;
    size_t index_of_recursion_completed_in_recursion_state_struct;

    LoopInformation(llvm::Loop* t_loop, llvm::Function* t_function);

    void analyze_loop_basic_structure();
    void analyze_phi_nodes_in_header();
    void analyze_captured_values();
    void analyze_return_values();
    void analyze_pointers_writing_memory();
    void analyze_return_value_struct_type();
    void analyze_recursion_state_struct_type();
};

#endif
