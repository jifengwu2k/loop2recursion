#ifndef LOOP_CONVERTER_H
#define LOOP_CONVERTER_H

/**
 * بسم الله الرحمن الرحيم
 * 
 * File: LoopConverter.h
 * Author: Abbas Wu
 * 
 * Copyright (C) 2022 Abbas Wu.
 * Distributed under the MIT License.
 */

#include <unordered_map>
#include <vector>

#include <llvm/Analysis/LoopInfo.h>
#include <llvm/IR/Argument.h>
#include <llvm/IR/Function.h>
#include <llvm/IR/LLVMContext.h>
#include <llvm/IR/Instructions.h>
#include <llvm/IR/BasicBlock.h>
#include <llvm/IR/DerivedTypes.h>

#include "LoopInformation.h"


struct LoopConverter {
    // initialized in initializer list
    LoopInformation& loop_information;
    const size_t recursion_depth_limit;
    const size_t loop_iterations_in_recursive_function;
    llvm::IntegerType* recursion_depth_counter_type;
    llvm::ConstantInt* recursion_depth_limit_constant_int;
    llvm::IntegerType* loop_counter_type;
    llvm::ConstantInt* loop_iterations_in_recursive_function_constant_int;
    const llvm::Twine& recursive_function_name;

    // initialized in create_auxiliary_basic_blocks_in_outer_function
    llvm::BasicBlock* insert_position_for_auxiliary_basic_blocks_in_outer_function;
    llvm::BasicBlock* initialize_context;
    llvm::BasicBlock* call_recursive_function;
    llvm::BasicBlock* extract_next_values;
    llvm::BasicBlock* branch_to_exit;
    std::unordered_map<llvm::BasicBlock *, llvm::BasicBlock *> exit_blocks_and_extract_return_values_blocks;

    // initialized in modify_initialize_context
    llvm::AllocaInst* alloca_return_value_struct;
    llvm::AllocaInst* alloca_recursion_state_struct;

    // initialized in synthesize_parameter_list
    size_t number_of_parameters;
    std::vector<llvm::Type *> types_in_parameter_list;
    size_t index_of_return_value_struct_in_parameter_list;
    std::unordered_map<llvm::Value *, size_t> indices_of_loop_variables_and_captured_values_in_parameter_list;
    size_t index_of_recursion_state_struct_in_parameter_list;
    size_t index_of_recursion_depth_counter_in_parameter_list;

    // initialized in create_recursive_function
    llvm::Type* recursive_function_return_type;
    llvm::FunctionType* recursive_function_type;
    llvm::Function* recursive_function;
    llvm::Argument* return_value_struct_argument;
    std::unordered_map<llvm::PHINode *, llvm::Argument *> loop_variable_arguments;
    std::unordered_map<llvm::Value *, llvm::Argument *> captured_value_arguments;
    llvm::Argument* recursion_state_struct_argument;
    llvm::Argument* recursion_depth_counter_argument;

    // initialized in move_basic_blocks_to_recursive_function
    llvm::BasicBlock* preheader_in_recursion;
    llvm::PHINode* loop_counter;
    std::unordered_map<llvm::BasicBlock *, llvm::BasicBlock *> latches_and_increment_loop_counters;
    std::unordered_map<llvm::BasicBlock *, llvm::BinaryOperator *> latches_and_incremented_loop_counters;
    llvm::BasicBlock* increment_depth_counter;
    llvm::BasicBlock* recursively_call_function;
    llvm::BasicBlock* save_recursion_state;
    std::unordered_map<llvm::BasicBlock *, llvm::BasicBlock *> exit_blocks_and_return_from_recursive_function_blocks;

    // initialized in modify_increment_depth_counter
    std::unordered_map<llvm::PHINode *, llvm::Value *> selected_values_of_loop_variables_in_next_iteration;
    llvm::BinaryOperator* incremented_recursion_depth;

    LoopConverter(
        LoopInformation& t_loop_information,
        const size_t t_recursion_depth_limit,
        const size_t t_loop_iterations_in_recursive_function,
        const llvm::Twine& t_recursive_function_name
    );

    void create_auxiliary_basic_blocks_in_outer_function();
    void modify_preheader();
    void modify_initialize_context();
    void synthesize_parameter_list();
    void create_recursive_function();
    void move_basic_blocks_to_recursive_function();
    void modify_preheader_in_recursion();
    void modify_latches();
    void modify_increment_loop_counters();
    void modify_header();
    void modify_increment_depth_counter();
    void modify_recursively_call_function();
    void modify_save_recursion_state();
    void modify_exiting_blocks();
    void modify_return_from_recursive_function_blocks();
    void modify_call_recursive_function_and_extract_next_values();
    void modify_branch_to_exit();
    void modify_extract_return_values_blocks_and_exit_blocks();
    void replace_captured_values();
};

#endif
