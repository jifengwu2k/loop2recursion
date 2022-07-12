/**
 * بسم الله الرحمن الرحيم
 * 
 * File: LoopInformation.cpp
 * Author: Abbas Wu
 * 
 * Copyright (C) 2022 Abbas Wu.
 * Distributed under the MIT License.
 */

// for assert
#include <cassert>
// for size_t
#include <cstdint>

// for std::sort
#include <algorithm>
// for std::deque
#include <deque>
// for std::iota
#include <numeric>
// for std::decltype
#include <type_traits>
// for std::vector
#include <vector>
// for std::move
#include <utility>

// for llvm::ArrayRef
#include <llvm/ADT/APInt.h>

// for llvm::predecessors, llvm::successors
#include <llvm/IR/CFG.h>
// for llvm::PHINode
#include <llvm/IR/Instructions.h>
// for llvm::Use
#include <llvm/IR/Use.h>
// for llvm::Value
#include <llvm/IR/Value.h>

// for llvm::dyn_cast
#include <llvm/Support/Casting.h>

#include "get_closest_matching_integer_type.h"
#include "LoopInformation.h"


LoopInformation::LoopInformation(llvm::Loop* t_loop, llvm::Function* t_function): loop(t_loop), function(t_function), context(t_function->getContext()), module(t_function->getParent())  {
    analyze_loop_basic_structure();

    analyze_phi_nodes_in_header();
    analyze_captured_values();
    analyze_return_values();

    analyze_pointers_writing_memory();
    analyze_return_value_struct_type();
    analyze_recursion_state_struct_type();
}

void LoopInformation::analyze_loop_basic_structure() {
    header = loop->getHeader();

    loop_name = "loop_" + header->getName().str(); 

    for (llvm::BasicBlock* predecessor: llvm::predecessors(header)) {
        if (loop->contains(predecessor)) {
            latches.insert(predecessor);
        }
        else {
            preheader = predecessor;
        }
    }

    size_t current_exit_block_id = 0;
    for (llvm::BasicBlock* basic_block: loop->blocks()) {
        for (llvm::BasicBlock* successor: llvm::successors(basic_block)) {
            if (!loop->contains(successor)) {
                exiting_blocks.insert(basic_block);
                exiting_blocks_and_exit_blocks[basic_block] = successor;
                exit_blocks.insert(successor);
                exit_blocks_and_ids[successor] = current_exit_block_id++;
                break;
            }
        }
    }
}

void LoopInformation::analyze_phi_nodes_in_header() {
    // we do not use llvm::PHINode& phi_node: header->phis()
    // in the situation that some PHINodes are not at the top of header
    // they cannot be detected
    for (llvm::Instruction& instruction_reference: header->getInstList()) {
        llvm::Instruction* instruction = &instruction_reference;

        if (llvm::PHINode* phi_node = llvm::dyn_cast<llvm::PHINode>(instruction)) {
            phi_nodes_in_header.insert(phi_node);
            types_of_phi_nodes_in_header[phi_node] = phi_node->getType();

            std::unordered_set<size_t> indices_of_incoming_latches_of_phi_node;

            // 遍历该PHINode的值和基本块，获取相应编号
            for (size_t i = 0, num_incoming_values = phi_node->getNumIncomingValues(); i < num_incoming_values; ++i) {
                llvm::BasicBlock* incoming_block = phi_node->getIncomingBlock(i);

                if (incoming_block == preheader) {
                    indices_of_incoming_preheader_of_phi_nodes_in_header[phi_node] = i;
                    values_of_incoming_preheader_of_phi_nodes_in_header[phi_node] = phi_node->getIncomingValue(i);
                }
                else if (latches.count(incoming_block)) {
                    indices_of_incoming_latches_of_phi_node.insert(i);
                }
                else {
                    assert(false && "Incoming Block of PHINode in Header should be either Preheader or Latch");
                }
            }
            indices_of_incoming_latches_of_phi_nodes_in_header[phi_node] = std::move(indices_of_incoming_latches_of_phi_node);
        }
    }
}

void LoopInformation::analyze_captured_values() {
    auto analyze_operands_of_instruction = [this](llvm::Instruction* instruction) {
        for (llvm::Use& operand_use: instruction->operands()) {
            llvm::Value* operand = operand_use.get();

            // operand can be dyn_cast to instruction_initializing_operand outside loop
            // operand is captured_value
            if (llvm::Instruction* instruction_initializing_operand = llvm::dyn_cast<llvm::Instruction>(operand)) {
                if (!loop->contains(instruction_initializing_operand->getParent())) {
                    captured_values.insert(instruction_initializing_operand);
                    instructions_and_captured_values_used[instruction].insert(instruction_initializing_operand);
                }
            }
            // if operand is not llvm::Instruction, operand should be llvm::Argument, llvm::BasicBlock, llvm::InlineAsm, llvm::Constant
            else {
                // operand can be dyn_cast to argument of function containing loop
                // operand is captured_value
                if (llvm::Argument* argument = llvm::dyn_cast<llvm::Argument>(operand)) {
                    captured_values.insert(argument);
                    instructions_and_captured_values_used[instruction].insert(argument);
                }
                // operand is BasicBlock, an operand of br, switch instruction
                // ignore
                else if (llvm::isa<llvm::BasicBlock>(operand)) {}
                // operand is InlineAsm
                // ignore
                else if (llvm::isa<llvm::InlineAsm>(operand)) {}
                // operand is Constant
                // ignore
                else if (llvm::isa<llvm::Constant>(operand)) {}
                else {
                    assert(false && "Operand of unknown type that cannot be cast to llvm::Instruction and is not llvm::Argument, llvm::BasicBlock, llvm::InlineAsm, or llvm::Constant");
                }
            }
        }
    };

    auto update_instructions_writing_memory = [this](llvm::Instruction* instruction) {
        if (
            llvm::isa<llvm::StoreInst>(instruction) || 
            llvm::isa<llvm::AtomicCmpXchgInst>(instruction) || 
            llvm::isa<llvm::AtomicRMWInst>(instruction)
        ) {
            instructions_writing_memory.insert(instruction);
        }
    };

    // iterate instructions in header
    // skip PHINodes
    for (llvm::Instruction& instruction_reference: header->getInstList()) {
        llvm::Instruction* instruction = &instruction_reference;

        if (llvm::isa<llvm::PHINode>(instruction)) {
            continue;
        }
        else {
            analyze_operands_of_instruction(instruction);
            update_instructions_writing_memory(instruction);
        }
    }

    // iterate instructions in remaining BasicBlocks
    const llvm::ArrayRef<llvm::BasicBlock *>& basic_blocks_in_loop = loop->getBlocks();
    assert(basic_blocks_in_loop[0] == header && "Header should be the first BasicBlock in a Loop");
    for (size_t i = 1; i < basic_blocks_in_loop.size(); ++i) {
        llvm::BasicBlock* basic_block = basic_blocks_in_loop[i];
        for (llvm::Instruction& instruction_reference: basic_block->getInstList()) {
            llvm::Instruction* instruction = &instruction_reference;

            analyze_operands_of_instruction(instruction);
            update_instructions_writing_memory(instruction);
        }
    }
}

void LoopInformation::analyze_return_values() {
    for (llvm::BasicBlock* exit_block: exit_blocks) {
        decltype(phi_nodes_in_exit_blocks) phi_nodes_in_current_exit_block;

        for (llvm::PHINode& phi_node: exit_block->phis()) {
            phi_nodes_in_exit_blocks.insert(&phi_node);
            phi_nodes_in_current_exit_block.insert(&phi_node);
        }

        exit_blocks_and_phi_nodes[exit_block] = std::move(phi_nodes_in_current_exit_block);
    }
}

void LoopInformation::analyze_pointers_writing_memory() {
    // use breadth-first search
    std::deque<llvm::Instruction *> deque(instructions_writing_memory.begin(), instructions_writing_memory.end());
    std::unordered_set<llvm::Instruction *> visited(instructions_writing_memory.begin(), instructions_writing_memory.end());

    while (!deque.empty()) {
        for (size_t i = 0, deque_size_before_insertion = deque.size(); i < deque_size_before_insertion; ++i) {
            llvm::Instruction* current_instruction = deque.front();
            deque.pop_front();
            
            for (llvm::Use& operand_use: current_instruction->operands()) {
                llvm::Value* operand = operand_use.get();
                if (llvm::isa<llvm::PointerType>(operand->getType())) {
                    if (captured_values.count(operand)) {
                        pointers_writing_memory.insert(operand);
                    }
                    else if (llvm::Instruction* instruction_initializing_operand = llvm::dyn_cast<llvm::Instruction>(operand)) {
                        if (!visited.count(instruction_initializing_operand)) {
                            deque.push_back(instruction_initializing_operand);
                            visited.insert(instruction_initializing_operand);
                        }
                    }
                }
            }
        }
    }
}

void LoopInformation::analyze_return_value_struct_type() {
    size_t number_of_returned_values = phi_nodes_in_exit_blocks.size();

    size_t number_of_exit_blocks = exit_blocks.size();

    return_value_struct_contains_return_values = number_of_returned_values > 0;

    return_value_struct_contains_exit_block_id = number_of_exit_blocks > 1;

    use_return_value_struct = return_value_struct_contains_return_values || return_value_struct_contains_exit_block_id;

    if (use_return_value_struct) {
        std::vector<llvm::Type *> return_value_types;
        
        size_t index = 0;
        if (return_value_struct_contains_return_values) {
            for (llvm::Value* return_value: phi_nodes_in_exit_blocks) {
                return_value_types.push_back(return_value->getType());

                indices_of_return_values_in_return_value_struct[return_value] = index++;
            }
        }

        if (return_value_struct_contains_exit_block_id) {
            exit_block_id_type = get_closest_matching_integer_type(context, number_of_exit_blocks);
            return_value_types.push_back(exit_block_id_type);

            index_of_exit_block_id_in_return_value_struct = index++;
        }

        return_value_struct_type = llvm::StructType::create(context, return_value_types);

        pointer_to_return_value_struct_type = llvm::PointerType::get(return_value_struct_type, 0);
    }
}

void LoopInformation::analyze_recursion_state_struct_type() {
    std::vector<llvm::Type *> types_in_recursion_state_struct;
    types_in_recursion_state_struct.reserve(phi_nodes_in_header.size() + 1);

    size_t current_index = 0;
    for (llvm::Value* loop_variable: phi_nodes_in_header) {
        types_in_recursion_state_struct.push_back(loop_variable->getType());
        indices_of_loop_variables_in_recursion_state_struct[loop_variable] = current_index++;
    }

    types_in_recursion_state_struct.push_back(llvm::Type::getInt1Ty(context));
    index_of_recursion_completed_in_recursion_state_struct = current_index++;

    recursion_state_struct_type = llvm::StructType::create(context, types_in_recursion_state_struct);

    pointer_to_recursion_state_struct_type = llvm::PointerType::get(recursion_state_struct_type, 0);
}
