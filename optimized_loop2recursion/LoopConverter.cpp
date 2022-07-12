/**
 * بسم الله الرحمن الرحيم
 * 
 * File: LoopConverter.cpp
 * Author: Abbas Wu
 * 
 * Copyright (C) 2022 Abbas Wu.
 * Distributed under the MIT License.
 */

// for assert
#include <cassert>

// for llvm::Argument
#include <llvm/IR/Argument.h>

#include "enumerate_and_call.hpp"
#include "get_closest_matching_integer_type.h"
#include "update_successors_if.hpp"
#include "LoopConverter.h"


LoopConverter::LoopConverter(
    LoopInformation& t_loop_information,
    std::unordered_map<llvm::Value *, llvm::GlobalVariable *>& t_captured_values_and_global_variables,
    const size_t t_recursion_depth_limit,
    const size_t t_loop_iterations_in_recursive_function,
    const llvm::Twine& t_recursive_function_name
):
    loop_information(t_loop_information),
    captured_values_and_global_variables(t_captured_values_and_global_variables),
    recursion_depth_limit(t_recursion_depth_limit),
    loop_iterations_in_recursive_function(t_loop_iterations_in_recursive_function), 
    recursion_depth_counter_type(get_closest_matching_integer_type(t_loop_information.context, t_recursion_depth_limit)),
    recursion_depth_limit_constant_int(llvm::ConstantInt::get(recursion_depth_counter_type, recursion_depth_limit)),
    loop_counter_type(get_closest_matching_integer_type(t_loop_information.context, t_loop_iterations_in_recursive_function)),
    loop_iterations_in_recursive_function_constant_int(llvm::ConstantInt::get(loop_counter_type, loop_iterations_in_recursive_function)),
    recursive_function_name(t_recursive_function_name)
{
    create_auxiliary_basic_blocks_in_outer_function();

    modify_preheader();
    modify_initialize_context();

    synthesize_parameter_list();
    create_recursive_function();

    move_basic_blocks_to_recursive_function();

    modify_preheader_in_recursion();
    modify_latches();
    modify_increment_loop_counters();
    modify_header();
    modify_increment_depth_counter();
    modify_recursively_call_function();
    modify_save_recursion_state();
    modify_exiting_blocks();
    modify_return_from_recursive_function_blocks();

    modify_call_recursive_function_and_extract_next_values();
    modify_branch_to_exit();
    modify_extract_return_values_blocks_and_exit_blocks();
    
    replace_captured_values();
}

void LoopConverter::create_auxiliary_basic_blocks_in_outer_function() {
    insert_position_for_auxiliary_basic_blocks_in_outer_function = loop_information.preheader->getNextNode();

    // create initialize_context if use_return_value_struct, recursion_depth_limit, invariant variables
    if (loop_information.use_return_value_struct || recursion_depth_limit || loop_information.captured_values.size()) {
        initialize_context = llvm::BasicBlock::Create(
            loop_information.context, // LLVMContext& Context
            llvm::Twine(recursive_function_name).concat("_initialize_context"), // const Twine& Name = ""
            loop_information.function, // Function* Parent = nullptr
            insert_position_for_auxiliary_basic_blocks_in_outer_function // BasicBlock* InsertBefore = nullptr
        );
    }

    // create call_recursive_function
    call_recursive_function = llvm::BasicBlock::Create(
        loop_information.context, // LLVMContext& Context
        llvm::Twine(recursive_function_name).concat("_call_recursive_function"), // const Twine& Name = ""
        loop_information.function, // Function* Parent = nullptr
        insert_position_for_auxiliary_basic_blocks_in_outer_function // BasicBlock* InsertBefore = nullptr
    );

    // create extract_next_values if recursion_depth_limit
    if (recursion_depth_limit) {
        extract_next_values = llvm::BasicBlock::Create(
            loop_information.context, // LLVMContext& Context
            llvm::Twine(recursive_function_name).concat("_extract_next_values"), // const Twine& Name = ""
            loop_information.function, // Function* Parent = nullptr
            insert_position_for_auxiliary_basic_blocks_in_outer_function // BasicBlock* InsertBefore = nullptr
        );
    }

    // create branch_to_exit if multiple exit_blocks
    if (loop_information.exit_blocks.size() > 1) {
        branch_to_exit = llvm::BasicBlock::Create(
            loop_information.context, // LLVMContext& Context
            llvm::Twine(recursive_function_name).concat("_branch_to_exit"), // const Twine& Name = ""
            loop_information.function, // Function* Parent = nullptr
            insert_position_for_auxiliary_basic_blocks_in_outer_function // BasicBlock* InsertBefore = nullptr
        );
    }

    // create a series of extract_return_values_blocks corresponding to exit_blocks if phi_nodes_in_exit_blocks
    if (loop_information.phi_nodes_in_exit_blocks.size() > 0) {
        enumerate_and_call(
            loop_information.exit_blocks, // Iterable& iterable
            [this](size_t index, llvm::BasicBlock* exit_block) {
                std::string index_string = std::to_string(index);

                exit_blocks_and_extract_return_values_blocks[exit_block] = llvm::BasicBlock::Create(
                    loop_information.context, // LLVMContext& Context
                    llvm::Twine(recursive_function_name).concat("_extract_return_values").concat(llvm::Twine('$')).concat(llvm::Twine(index_string)), // const Twine& Name = ""
                    loop_information.function, // Function* Parent = nullptr
                    insert_position_for_auxiliary_basic_blocks_in_outer_function // BasicBlock* InsertBefore = nullptr
                );
            } // const Callback& callback
        );
    }
}

void LoopConverter::modify_preheader() {
    llvm::BasicBlock* new_successor = (loop_information.use_return_value_struct || recursion_depth_limit || loop_information.captured_values.size()) ? initialize_context : call_recursive_function;

    update_successors_if(
        loop_information.preheader, // llvm::BasicBlock* basic_block
        [this](llvm::BasicBlock* basic_block){ return basic_block == loop_information.header; }, // const Predicate& predicate
        new_successor // llvm::BasicBlock* new_successor
    );
}

void LoopConverter::modify_initialize_context() {
    if (loop_information.use_return_value_struct || recursion_depth_limit || loop_information.captured_values.size()) {
        // allocate global_return_value_struct if use_return_value_struct
        if (loop_information.use_return_value_struct) {
            global_return_value_struct = new llvm::GlobalVariable(
                *(loop_information.module), // Module& M
                loop_information.return_value_struct_type, // Type* Ty
                false, // bool isConstant
                llvm::GlobalValue::LinkageTypes::ExternalLinkage, // LinkageTypes Linkage
                llvm::Constant::getNullValue(loop_information.return_value_struct_type), // Constant* Initializer
                llvm::Twine(recursive_function_name).concat("_return_value_struct"), // const Twine& Name = ""
                nullptr, // GlobalVariable* InsertBefore = nullptr
                llvm::GlobalValue::ThreadLocalMode::NotThreadLocal, // ThreadLocalMode TLMode = NotThreadLocal
                llvm::None, // Optional<unsigned> AddressSpace = None
                false // bool isExternallyInitialized = false
            );

            global_return_value_struct->setDSOLocal(true);
        }

        // allocate global_recursion_state_struct if recursion_depth_limit
        if (recursion_depth_limit) {
            global_recursion_state_struct = new llvm::GlobalVariable(
                *(loop_information.module), // Module& M
                loop_information.recursion_state_struct_type, // Type* Ty
                false, // bool isConstant
                llvm::GlobalValue::LinkageTypes::ExternalLinkage, // LinkageTypes Linkage
                llvm::Constant::getNullValue(loop_information.recursion_state_struct_type), // Constant* Initializer
                llvm::Twine(recursive_function_name).concat("_recursion_state_struct"), // const Twine& Name = ""
                nullptr, // GlobalVariable* InsertBefore = nullptr
                llvm::GlobalValue::ThreadLocalMode::NotThreadLocal, // ThreadLocalMode TLMode = NotThreadLocal
                llvm::None, // Optional<unsigned> AddressSpace = None
                false // bool isExternallyInitialized = false
            );

            global_recursion_state_struct->setDSOLocal(true);
        }

        // allocate global_variables corresponding to captured_values
        for (llvm::Value* captured_value: loop_information.captured_values) {
            llvm::GlobalVariable* global_variable = nullptr;

            if (captured_values_and_global_variables.count(captured_value) == 0) {
                // references
                // 1. https://subscription.packtpub.com/book/application-development/9781785280801/2/ch02lvl1sec15/emitting-a-global-variable
                // 2. https://stackoverflow.com/questions/70405403/how-to-create-global-variable-as-dso-local-in-llvm-ir-builder-for-c
                global_variable = new llvm::GlobalVariable(
                    *(loop_information.module), // Module& M
                    captured_value->getType(), // Type* Ty
                    false, // bool isConstant
                    llvm::GlobalValue::LinkageTypes::ExternalLinkage, // LinkageTypes Linkage
                    llvm::Constant::getNullValue(captured_value->getType()), // Constant* Initializer
                    llvm::Twine(loop_information.module->getName())
                        .concat(llvm::Twine("_invariant_variable"))
                        .concat(llvm::Twine('$'))
                        .concat(llvm::Twine(std::to_string(captured_values_and_global_variables.size()))), // const Twine& Name = ""
                    nullptr, // GlobalVariable* InsertBefore = nullptr
                    llvm::GlobalValue::ThreadLocalMode::NotThreadLocal, // ThreadLocalMode TLMode = NotThreadLocal
                    llvm::None, // Optional<unsigned> AddressSpace = None
                    false // bool isExternallyInitialized = false
                );

                global_variable->setDSOLocal(true);

                captured_values_and_global_variables[captured_value] = global_variable;
            }
            else {
                global_variable = captured_values_and_global_variables[captured_value];
            }

            llvm::StoreInst* store_captured_value = new llvm::StoreInst(
                captured_value, // Value* Val
                global_variable, // Value* Ptr
                initialize_context // BasicBlock* InsertAtEnd
            );
        }

        // insert branch_to_call_recursive_function
        llvm::BranchInst* branch_to_call_recursive_function = llvm::BranchInst::Create(
            call_recursive_function, // BasicBlock* IfTrue
            initialize_context // BasicBlock* InsertAtEnd 
        );
    }
}

void LoopConverter::synthesize_parameter_list() {
    // initialize number_of_parameters
    number_of_parameters = loop_information.phi_nodes_in_header.size();
    
    if (recursion_depth_limit) ++number_of_parameters;

    // initialize types_in_parameter_list, indices_of_loop_variables_in_parameter_list
    types_in_parameter_list.reserve(number_of_parameters);

    size_t current_index = 0;
    for (llvm::PHINode* loop_variable: loop_information.phi_nodes_in_header) {
        types_in_parameter_list.push_back(loop_variable->getType());

        indices_of_loop_variables_in_parameter_list[loop_variable] = current_index++;
    }

    if (recursion_depth_limit) {
        types_in_parameter_list.push_back(recursion_depth_counter_type);
        index_of_recursion_depth_counter_in_parameter_list = current_index++;
    }
}

void LoopConverter::create_recursive_function() {
    recursive_function_return_type = llvm::Type::getVoidTy(loop_information.context);

    recursive_function_type = llvm::FunctionType::get(
        recursive_function_return_type, // Type* Result
        types_in_parameter_list, // ArrayRef<Type *> Params
        false // bool isVarArg 
    );

    recursive_function = llvm::Function::Create(
        recursive_function_type, // FunctionType* Ty
        llvm::GlobalValue::LinkageTypes::ExternalLinkage, // LinkageTypes Linkage
        recursive_function_name, // const Twine& N = ""
         loop_information.module // Module* M = nullptr
    );

    // initialize loop_variable_arguments
    for (llvm::PHINode* loop_variable: loop_information.phi_nodes_in_header) {
        size_t index = indices_of_loop_variables_in_parameter_list[loop_variable];

        loop_variable_arguments[loop_variable] = recursive_function->getArg(index);
    }

    // initialize recursion_depth_counter_argument if recursion_depth_limit
    if (recursion_depth_limit) {
        recursion_depth_counter_argument = recursive_function->getArg(index_of_recursion_depth_counter_in_parameter_list);
    }
}

void LoopConverter::move_basic_blocks_to_recursive_function() {
    // create preheader_in_recursion if loop_iterations_in_recursive_function
    if (loop_iterations_in_recursive_function) {
        preheader_in_recursion = llvm::BasicBlock::Create(
            loop_information.context, // LLVMContext& Context
            llvm::Twine(recursive_function_name).concat("_preheader_in_recursion"), // const Twine& Name = ""
            recursive_function, // Function* Parent = nullptr
            nullptr // BasicBlock* InsertBefore = nullptr
        );
    }

    // move loop_basic_block
    for (llvm::BasicBlock* loop_basic_block: loop_information.loop->blocks()) {
        loop_basic_block->removeFromParent();
        loop_basic_block->insertInto(
            recursive_function, // Function* Parent
            nullptr // BasicBlock* InsertBefore=nullptr
        );
    }

    // rename header
    loop_information.header->setName(
        llvm::Twine(recursive_function_name).concat("_header")
    );

    // create loop_counter if loop_iterations_in_recursive_function
    if (loop_iterations_in_recursive_function) {
        llvm::Instruction& reference_to_first_instruction_in_header = *(loop_information.header->begin());
        llvm::Instruction* first_instruction_in_header = &reference_to_first_instruction_in_header;

        loop_counter = llvm::PHINode::Create(
            loop_counter_type, // Type* Ty
            loop_information.latches.size() + 1, // unsigned NumReservedValues
            "loop_counter", // const Twine& NameStr
            first_instruction_in_header // Instruction* InsertBefore
        );
    }

    // rename exiting_blocks
    enumerate_and_call(
        loop_information.exiting_blocks, // Iterable& iterable
        [this](size_t index, llvm::BasicBlock* exiting_block) {
            std::string index_string = std::to_string(index);

            exiting_block->setName(
                llvm::Twine(recursive_function_name).concat("_exiting").concat(llvm::Twine('$')).concat(llvm::Twine(index_string))
            );
        } // const Callback& callback
    );

    // rename latches
    enumerate_and_call(
        loop_information.latches, // Iterable& iterable
        [this](size_t index, llvm::BasicBlock* latch) {
            std::string index_string = std::to_string(index);

            latch->setName(
                llvm::Twine(recursive_function_name).concat("_latch").concat(llvm::Twine('$')).concat(llvm::Twine(index_string))
            );
        } // const Callback& callback
    );

    // create increment_loop_counters, incremented_loop_counters corresponding to latches if loop_iterations_in_recursive_function 
    if (loop_iterations_in_recursive_function) {
        enumerate_and_call(
            loop_information.latches, // Iterable& iterable
            [this](size_t index, llvm::BasicBlock* latch) {
                std::string index_string = std::to_string(index);

                latches_and_increment_loop_counters[latch] = llvm::BasicBlock::Create(
                    loop_information.context, // LLVMContext& Context
                    llvm::Twine(recursive_function_name).concat("_increment_loop_counter").concat(llvm::Twine('$')).concat(llvm::Twine(index_string)), // const Twine& Name = ""
                    recursive_function, // Function* Parent = nullptr
                    nullptr // BasicBlock* InsertBefore = nullptr
                );

                latches_and_incremented_loop_counters[latch] = llvm::BinaryOperator::Create(
                    llvm::Instruction::BinaryOps::Add, // BinaryOps Op
                    loop_counter, // Value* S1
                    llvm::ConstantInt::get(
                        loop_counter_type, // IntegerType* Ty
                        1, // uint64_t V
                        false // bool IsSigned = false 
                    ), // Value* S2
                    "", // const Twine & Name
                    latches_and_increment_loop_counters[latch] // BasicBlock* InsertAtEnd
                );
            } // const Callback& callback
        );
    }

    // create increment_depth_counter
    increment_depth_counter = llvm::BasicBlock::Create(
        loop_information.context, // LLVMContext& Context
        llvm::Twine(recursive_function_name).concat("_increment_depth_counter"), // const Twine& Name = ""
        recursive_function, // Function* Parent = nullptr
        nullptr // BasicBlock* InsertBefore = nullptr
    );

    // create recursively_call_function
    recursively_call_function = llvm::BasicBlock::Create(
        loop_information.context, // LLVMContext& Context
        llvm::Twine(recursive_function_name).concat("_recursively_call_function"), // const Twine& Name = ""
        recursive_function, // Function* Parent = nullptr
        nullptr // BasicBlock* InsertBefore = nullptr 
    );

    // create save_recursion_state if recursion_depth_limit
    if (recursion_depth_limit) {
        save_recursion_state = llvm::BasicBlock::Create(
            loop_information.context, // LLVMContext& Context
            llvm::Twine(recursive_function_name).concat("_save_recursive_state_and_return"), // const Twine& Name = ""
            recursive_function, // Function* Parent = nullptr
            nullptr // BasicBlock* InsertBefore = nullptr
        );
    }

    // create return_from_recursive_function_blocks corresponding to exit_blocks
    enumerate_and_call(
        loop_information.exit_blocks, // Iterable& iterable
        [this](size_t index, llvm::BasicBlock* exit_block) {
            std::string index_string = std::to_string(index);

            exit_blocks_and_return_from_recursive_function_blocks[exit_block] = llvm::BasicBlock::Create(
                loop_information.context, // LLVMContext& Context
                llvm::Twine(recursive_function_name).concat("_return_from_recursive_function").concat(llvm::Twine('$')).concat(llvm::Twine(index_string)), // const Twine& Name = ""
                recursive_function, // Function* Parent = nullptr
                nullptr // BasicBlock* InsertBefore = nullptr
            );
        } // const Callback& callback
    );
}

void LoopConverter::modify_preheader_in_recursion() {
    if (loop_iterations_in_recursive_function) {
        llvm::BranchInst* branch_to_header_from_preheader_in_recursion = llvm::BranchInst::Create(
            loop_information.header, // BasicBlock* IfTrue
            preheader_in_recursion // BasicBlock* InsertAtEnd 
        );
    }
}

void LoopConverter::modify_latches() {
    // update successors from header to increment_loop_counter if loop_iterations_in_recursive_function
    if (loop_iterations_in_recursive_function) {
        for (llvm::BasicBlock* latch: loop_information.latches) {
            update_successors_if(
                latch, // llvm::BasicBlock* basic_block
                [this](llvm::BasicBlock* basic_block){ return basic_block == loop_information.header; }, // const Predicate& predicate
                latches_and_increment_loop_counters[latch] // llvm::BasicBlock* new_successor
            );
        }
    }
    // else, update successors from header to increment_depth_counter
    else {
        for (llvm::BasicBlock* latch: loop_information.latches) {
            update_successors_if(
                latch, // llvm::BasicBlock* basic_block
                [this](llvm::BasicBlock* basic_block){ return basic_block == loop_information.header; }, // const Predicate& predicate
                increment_depth_counter // llvm::BasicBlock* new_successor
            );
        }
    }
}

void LoopConverter::modify_increment_loop_counters() {
    if (loop_iterations_in_recursive_function) {
        for (llvm::BasicBlock* latch: loop_information.latches) {
            llvm::BasicBlock* increment_loop_counter = latches_and_increment_loop_counters[latch];
                
            llvm::CmpInst* compare_incremented_loop_counter = llvm::CmpInst::Create(
                llvm::Instruction::OtherOps::ICmp, // OtherOps Op, llvm::Instruction::OtherOps::ICmp for integer comparison, llvm::Instruction::OtherOps::FCmp for float comparison
                llvm::CmpInst::Predicate::ICMP_ULT, // Predicate predicate, unsigned less than
                latches_and_incremented_loop_counters[latch], // Value* S1
                loop_iterations_in_recursive_function_constant_int, // Value* S2
                "", // const Twine& Name
                increment_loop_counter // BasicBlock* Insert
            );

            llvm::BranchInst* branch_to_header_or_increment_depth_counter = llvm::BranchInst::Create(
                loop_information.header, // BasicBlock* IfTrue
                increment_depth_counter, // BasicBlock* ifFalse
                compare_incremented_loop_counter, // Value* Cond
                increment_loop_counter // BasicBlock* InsertAtEnd 
            );
        }
    }
}

void LoopConverter::modify_header() {
    // modify phi_nodes_in_header and create loop_counter if loop_iterations_in_recursive_function
    if (loop_iterations_in_recursive_function) {
        // modify phi_nodes_in_header
        for (llvm::PHINode* phi_node: loop_information.phi_nodes_in_header) {
            // modify incoming_block from preheader to preheader_in_recursion, incoming_value to loop_variable_argument
            size_t index_of_preheader = loop_information.indices_of_incoming_preheader_of_phi_nodes_in_header[phi_node];
            llvm::Argument* loop_variable_argument = loop_variable_arguments[phi_node];
            phi_node->setIncomingBlock(index_of_preheader, preheader_in_recursion);
            phi_node->setIncomingValue(index_of_preheader, loop_variable_argument);

            // modify incoming block from latch to increment_loop_counter
            for (size_t index_of_latch: loop_information.indices_of_incoming_latches_of_phi_nodes_in_header[phi_node]) {
                llvm::BasicBlock* latch = phi_node->getIncomingBlock(index_of_latch);
                llvm::BasicBlock* increment_loop_counter = latches_and_increment_loop_counters[latch];
                phi_node->setIncomingBlock(index_of_latch, increment_loop_counter);
            }
        }

        loop_counter->addIncoming(
            llvm::ConstantInt::get(
                loop_counter_type, // IntegerType* Ty
                0, // uint64_t V
                false // bool IsSigned = false 
            ), // Value* V
            preheader_in_recursion // BasicBlock* BB
        );

        for (llvm::BasicBlock* latch: loop_information.latches) {
            loop_counter->addIncoming(
                latches_and_incremented_loop_counters[latch], // Value* V
                latches_and_increment_loop_counters[latch] // BasicBlock* BB
            );
        }
    }
}

void LoopConverter::modify_increment_depth_counter() {
    // initialize selected_values_of_loop_variables_in_next_iteration

    // analyze values_of_loop_variables_in_next_iteration_from_different_latches
    std::unordered_map<llvm::PHINode *, std::unordered_map<llvm::BasicBlock *, llvm::Value *>> values_of_loop_variables_in_next_iteration_from_different_latches;
    for (llvm::PHINode* loop_variable: loop_information.phi_nodes_in_header) {
        std::unordered_set<size_t>& indices_of_incoming_latches_of_loop_variable = loop_information.indices_of_incoming_latches_of_phi_nodes_in_header[loop_variable];

        for (size_t index_of_incoming_latch_of_loop_variable: indices_of_incoming_latches_of_loop_variable) {
            llvm::BasicBlock* incoming_latch = loop_variable->getIncomingBlock(index_of_incoming_latch_of_loop_variable);
            llvm::Value* incoming_value = loop_variable->getIncomingValue(index_of_incoming_latch_of_loop_variable);

            // if incoming_value is another loop_variable and no loop_iterations_in_recursive_function
            // set incoming_value to the corresponding loop_variable_argument
            if (llvm::PHINode* other_loop_variable = llvm::dyn_cast<llvm::PHINode>(incoming_value)) {
                if (loop_information.phi_nodes_in_header.count(other_loop_variable)) {
                    if (!(loop_iterations_in_recursive_function)) {
                        incoming_value = loop_variable_arguments[other_loop_variable];
                    }
                }
            }

            values_of_loop_variables_in_next_iteration_from_different_latches[loop_variable][incoming_latch] = incoming_value;
        }
    }

    for (llvm::PHINode* loop_variable: loop_information.phi_nodes_in_header) {
        std::unordered_map<llvm::BasicBlock *, llvm::Value *>& values_of_loop_variable_in_next_iteration_from_different_latches = values_of_loop_variables_in_next_iteration_from_different_latches[loop_variable];
        
        if (values_of_loop_variable_in_next_iteration_from_different_latches.size() == 1) {
            auto it = values_of_loop_variable_in_next_iteration_from_different_latches.begin();
            selected_values_of_loop_variables_in_next_iteration[loop_variable] = it->second;
        }
        // if there is more than one latch, create a PHINode, selected_value_of_loop_variable_in_next_iteration in increment_depth_counter
        // use the phi_node in selected_values_of_loop_variables_in_next_iteration
        else if (values_of_loop_variable_in_next_iteration_from_different_latches.size() > 1) {
            llvm::PHINode* selected_value_of_loop_variable_in_next_iteration = llvm::PHINode::Create(
                loop_variable->getType(), // Type* Ty
                values_of_loop_variable_in_next_iteration_from_different_latches.size(), // unsigned NumReservedValues
                "", // const Twine& NameStr
                increment_depth_counter // BasicBlock* InsertAtEnd
            );

            {
                for (
                    auto it = values_of_loop_variable_in_next_iteration_from_different_latches.begin(), end = values_of_loop_variable_in_next_iteration_from_different_latches.end();
                    it != end;
                    ++it
                ) {
                    llvm::BasicBlock* incoming_latch = it->first;
                    llvm::Value* incoming_value = it->second;

                    // the predecessor is increment_loop_counter corresponding to incoming_latch if loop_iterations_in_recursive_function
                    if (loop_iterations_in_recursive_function) {
                        selected_value_of_loop_variable_in_next_iteration->addIncoming(
                            incoming_value, // Value* V
                            latches_and_increment_loop_counters[incoming_latch] // BasicBlock* BB
                        );
                    }
                    // else, the predecessor is incoming_latch
                    else {
                        selected_value_of_loop_variable_in_next_iteration->addIncoming(
                            incoming_value, // Value* V
                            incoming_latch // BasicBlock* BB
                        );
                    }
                }
            }

            selected_values_of_loop_variables_in_next_iteration[loop_variable] = selected_value_of_loop_variable_in_next_iteration;
        }
        else {
            assert(false && "Loop variable should have at least one incoming value and incoming latch");
        }
    }

    // increment recursion_depth and branch to recursively_call_function or save_recursion_state if recursion_depth_limit
    if (recursion_depth_limit) {
        incremented_recursion_depth = llvm::BinaryOperator::Create(
            llvm::Instruction::BinaryOps::Add, // BinaryOps Op
            recursion_depth_counter_argument, // Value* S1
            llvm::ConstantInt::get(
                recursion_depth_counter_type,
                1
            ), // Value* S2
            "", // const Twine & Name
            increment_depth_counter // BasicBlock* InsertAtEnd
        );

        llvm::CmpInst* compare_incremented_recursion_depth = llvm::CmpInst::Create(
            llvm::Instruction::OtherOps::ICmp, // OtherOps Op
            llvm::CmpInst::Predicate::ICMP_ULT, // Predicate predicate
            incremented_recursion_depth, // Value* S1
            recursion_depth_limit_constant_int, // Value* S2
            "", // const Twine& Name
            increment_depth_counter // BasicBlock* Insert
        );

        llvm::BranchInst* branch_to_recursively_call_function_or_save_recursion_state = llvm::BranchInst::Create(
            recursively_call_function, // BasicBlock* IfTrue
            save_recursion_state, // BasicBlock* ifFalse
            compare_incremented_recursion_depth, // Value* Cond
            increment_depth_counter // BasicBlock* InsertAtEnd
        );
    }
    // else, branch to recursively_call_function
    else {
        llvm::BranchInst* branch_to_recursively_call_function = llvm::BranchInst::Create(
            recursively_call_function, // BasicBlock* IfTrue
            increment_depth_counter // BasicBlock* InsertAtEnd 
        );
    }
}

void LoopConverter::modify_recursively_call_function() {
    // initialize recursively_call_function_arguments
    std::vector<llvm::Value *> recursively_call_function_arguments(number_of_parameters);

    for (llvm::PHINode* phi_node: loop_information.phi_nodes_in_header) {
        size_t index = indices_of_loop_variables_in_parameter_list[phi_node];

        llvm::Value* value_in_next_iteration = selected_values_of_loop_variables_in_next_iteration[phi_node];

        recursively_call_function_arguments[index] = value_in_next_iteration;
    }

    if (recursion_depth_limit) {
        recursively_call_function_arguments[index_of_recursion_depth_counter_in_parameter_list] = incremented_recursion_depth;
    }

    // create recursively_call_function_instruction
    llvm::CallInst* recursively_call_function_instruction = llvm::CallInst::Create(
        recursive_function_type, // FunctionType* Ty
        recursive_function, // Value* F
        recursively_call_function_arguments, // ArrayRef< Value *> Args
        "", // const Twine& NameStr
        recursively_call_function // BasicBlock* InsertAtEnd 
    );

    // create return_from_recursively_call_function
    llvm::ReturnInst* return_from_recursively_call_function = llvm::ReturnInst::Create(
        loop_information.context, // LLVMContext& C
        nullptr, // Value* retVal
        recursively_call_function // BasicBlock* InsertAtEnd
    );
}

void LoopConverter::modify_save_recursion_state() {
    if (recursion_depth_limit) {
        // store value_in_next_iteration in global_recursion_state_struct
        for (llvm::PHINode* phi_node: loop_information.phi_nodes_in_header) {
            llvm::Value* value_in_next_iteration = selected_values_of_loop_variables_in_next_iteration[phi_node];

            size_t index_in_recursion_state_struct = loop_information.indices_of_loop_variables_in_recursion_state_struct[phi_node];
            
            llvm::GetElementPtrInst* element_pointer = llvm::GetElementPtrInst::Create(
                loop_information.recursion_state_struct_type, // Type* PointeeType
                global_recursion_state_struct, // Value* Ptr
                {
                    llvm::ConstantInt::get(
                        llvm::Type::getInt32Ty(loop_information.context), // IntegerType* Ty
                        0, // uint64_t V
                        false // bool IsSigned = false 
                    ),
                    llvm::ConstantInt::get(
                        llvm::Type::getInt32Ty(loop_information.context), // IntegerType* Ty
                        index_in_recursion_state_struct, // uint64_t V
                        false // bool IsSigned = false
                    ),
                }, // ArrayRef<Value *> IdxList
                "", // const Twine& NameStr
                save_recursion_state // BasicBlock* InsertAtEnd 
            );

            llvm::StoreInst* store_loop_variable_instruction = new llvm::StoreInst(
                value_in_next_iteration, // Value* Val
                element_pointer, // Value* Ptr
                save_recursion_state // BasicBlock* InsertAtEnd
            );
        }

        // store false in global_recursion_state_struct
        llvm::GetElementPtrInst* recursion_state_struct_recursion_completed_element_pointer = llvm::GetElementPtrInst::Create(
            loop_information.recursion_state_struct_type, // Type* PointeeType
            global_recursion_state_struct, // Value* Ptr
            {
                llvm::ConstantInt::get(
                    llvm::Type::getInt32Ty(loop_information.context), // IntegerType* Ty
                    0, // uint64_t V
                    false // bool IsSigned = false
                ),
                llvm::ConstantInt::get(
                    llvm::Type::getInt32Ty(loop_information.context), // IntegerType* Ty
                    loop_information.index_of_recursion_completed_in_recursion_state_struct, // uint64_t V
                    false // bool IsSigned = false
                ),
            }, // ArrayRef<Value *> IdxList
            "", // const Twine& NameStr
            save_recursion_state // BasicBlock* InsertAtEnd 
        );

        llvm::StoreInst* store_recursion_completed_instruction = new llvm::StoreInst(
            llvm::ConstantInt::getFalse(
                loop_information.context // LLVMContext & 	Context
            ), // Value* Val
            recursion_state_struct_recursion_completed_element_pointer, // Value* Ptr
            save_recursion_state // BasicBlock* InsertAtEnd
        );

        // create return_inst
        llvm::ReturnInst* return_inst = llvm::ReturnInst::Create(
            loop_information.context, // LLVMContext& C
            nullptr, // Value* retVal
            save_recursion_state // BasicBlock* InsertAtEnd 
        );
    }
}

void LoopConverter::modify_exiting_blocks() {
    for (llvm::BasicBlock* exiting_block: loop_information.exiting_blocks) {
        llvm::BasicBlock* exit_block = loop_information.exiting_blocks_and_exit_blocks[exiting_block];

        // update successors to corresponding return_from_recursive_function block
        update_successors_if(
            exiting_block, // llvm::BasicBlock* basic_block
            [exit_block](llvm::BasicBlock* basic_block){ return basic_block == exit_block; }, // const Predicate& predicate
            exit_blocks_and_return_from_recursive_function_blocks[exit_block] // llvm::BasicBlock* new_successor
        );
    }
}

void LoopConverter::modify_return_from_recursive_function_blocks() {
    // iterate all exit_blocks and corresponding return_from_recursive_function_blocks
    for (auto it = exit_blocks_and_return_from_recursive_function_blocks.begin(), end = exit_blocks_and_return_from_recursive_function_blocks.end(); it != end; ++it) {
        llvm::BasicBlock* exit_block = it->first;
        llvm::BasicBlock* return_from_recursive_function_block = it->second;

        if (loop_information.use_return_value_struct) {
            // initialize phi_nodes_in_exit_block_and_values_to_return
            std::unordered_map<llvm::PHINode *, llvm::Value *> phi_nodes_in_exit_block_and_values_to_return;

            for (llvm::PHINode* phi_node_in_exit_block: loop_information.exit_blocks_and_phi_nodes[exit_block]) {
                // if one incoming value, get the incoming value, and store in phi_nodes_in_exit_block_and_values_to_return
                if (phi_node_in_exit_block->getNumIncomingValues() == 1) {
                    phi_nodes_in_exit_block_and_values_to_return[phi_node_in_exit_block] = phi_node_in_exit_block->getIncomingValue(0);
                }
                // if multiple incoming values, create a PHINode, phi_node_in_return_from_recursive_function_block, and store in phi_nodes_in_exit_block_and_values_to_return
                else if (phi_node_in_exit_block->getNumIncomingValues() > 1) {
                    llvm::PHINode* phi_node_in_return_from_recursive_function_block = llvm::PHINode::Create(
                        phi_node_in_exit_block->getType(), // Type* Ty
                        phi_node_in_exit_block->getNumIncomingValues(), // unsigned NumReservedValues
                        "", // const Twine& NameStr
                        return_from_recursive_function_block // BasicBlock* InsertAtEnd
                    );

                    for (
                        size_t incoming_value_counter = 0, num_incoming_values = phi_node_in_exit_block->getNumIncomingValues();
                        incoming_value_counter < num_incoming_values;
                        ++incoming_value_counter
                    ) {
                        phi_node_in_return_from_recursive_function_block->addIncoming(
                            phi_node_in_exit_block->getIncomingValue(incoming_value_counter), // Value* V
                            phi_node_in_exit_block->getIncomingBlock(incoming_value_counter) // BasicBlock* BB
                        );
                    }

                    phi_nodes_in_exit_block_and_values_to_return[phi_node_in_exit_block] = phi_node_in_return_from_recursive_function_block;
                }
                else {
                    assert(false && "PHINode in exit block should have at least one incoming value and incoming latch");
                }
            }

            // store values_to_return in global_return_value_struct
            for (llvm::PHINode* phi_node_in_exit_block: loop_information.exit_blocks_and_phi_nodes[exit_block]) {
                llvm::Value* value_to_return = phi_nodes_in_exit_block_and_values_to_return[phi_node_in_exit_block];
                
                llvm::GetElementPtrInst* return_value_struct_element_pointer = llvm::GetElementPtrInst::Create(
                    loop_information.return_value_struct_type, // Type* PointeeType
                    global_return_value_struct, // Value* Ptr
                    {
                        llvm::ConstantInt::get(
                            llvm::Type::getInt32Ty(loop_information.context), // IntegerType* Ty
                            0, // uint64_t V
                            false // bool IsSigned = false
                        ),
                        llvm::ConstantInt::get(
                            llvm::Type::getInt32Ty(loop_information.context), // IntegerType* Ty
                            loop_information.indices_of_return_values_in_return_value_struct[phi_node_in_exit_block], // uint64_t V
                            false // bool IsSigned = false
                        ),
                    }, // ArrayRef<Value *> IdxList
                    "", // const Twine& NameStr
                    return_from_recursive_function_block // BasicBlock* InsertAtEnd
                );

                llvm::StoreInst* store_return_value_instruction = new llvm::StoreInst(
                    value_to_return, // Value* Val
                    return_value_struct_element_pointer, // Value* Ptr
                    return_from_recursive_function_block // BasicBlock* InsertAtEnd
                );
            }

            // store exit_block_id in global_return_value_struct
            if (loop_information.return_value_struct_contains_exit_block_id) {
                llvm::GetElementPtrInst* return_value_struct_element_pointer = llvm::GetElementPtrInst::Create(
                    loop_information.return_value_struct_type, // Type* PointeeType
                    global_return_value_struct, // Value* Ptr
                    {
                        llvm::ConstantInt::get(
                            llvm::Type::getInt32Ty(loop_information.context), // IntegerType* Ty
                            0, // uint64_t V
                            false // bool IsSigned = false 
                        ),
                        llvm::ConstantInt::get(
                            llvm::Type::getInt32Ty(loop_information.context), // IntegerType* Ty
                            loop_information.index_of_exit_block_id_in_return_value_struct, // uint64_t V
                            false // bool IsSigned = false 
                        ),
                    }, // ArrayRef<Value *> IdxList
                    "", // const Twine& NameStr
                    return_from_recursive_function_block // BasicBlock* InsertAtEnd
                );

                llvm::StoreInst* store_return_value_instruction = new llvm::StoreInst(
                    llvm::ConstantInt::get(
                        loop_information.exit_block_id_type, // IntegerType* Ty
                        loop_information.exit_blocks_and_ids[exit_block], // uint64_t V
                        false // bool IsSigned = false 
                    ), // Value* Val
                    return_value_struct_element_pointer, // Value* Ptr
                    return_from_recursive_function_block // BasicBlock* InsertAtEnd
                );
            }
        }

        // store true in global_recursion_state_struct if recursion_depth_limit
        if (recursion_depth_limit) {
            llvm::GetElementPtrInst* recursion_state_struct_recursion_completed_element_pointer = llvm::GetElementPtrInst::Create(
                loop_information.recursion_state_struct_type, // Type* PointeeType
                global_recursion_state_struct, // Value* Ptr
                {
                    llvm::ConstantInt::get(
                        llvm::Type::getInt32Ty(loop_information.context), // IntegerType* Ty
                        0, // uint64_t V
                        false // bool IsSigned = false
                    ),
                    llvm::ConstantInt::get(
                        llvm::Type::getInt32Ty(loop_information.context), // IntegerType* Ty
                        loop_information.index_of_recursion_completed_in_recursion_state_struct, // uint64_t V
                        false // bool IsSigned = false
                    ),
                }, // ArrayRef<Value *> IdxList
                "", // const Twine& NameStr
                return_from_recursive_function_block // BasicBlock* InsertAtEnd 
            );

            llvm::StoreInst* store_recursion_completed_instruction = new llvm::StoreInst(
                llvm::ConstantInt::getTrue(
                    loop_information.context // LLVMContext & 	Context
                ), // Value* Val
                recursion_state_struct_recursion_completed_element_pointer, // Value* Ptr
                return_from_recursive_function_block // BasicBlock* InsertAtEnd
            );
        }

        // create return_inst
        llvm::ReturnInst* return_inst = llvm::ReturnInst::Create(
            loop_information.context, // LLVMContext& C
            nullptr, // Value* retVal
            return_from_recursive_function_block // BasicBlock* InsertAtEnd 
        );
    }
}

void LoopConverter::modify_call_recursive_function_and_extract_next_values() {
    // initialize loop_variables_and_values
    std::unordered_map<llvm::PHINode *, llvm::Value *> loop_variables_and_values;

    // if recursion_depth_limit
    // get_loop_variable in extract_next_values and branch to call_recursive_function
    // insert PHINodes in call_recursive_function to select values of loop_variables
    if (recursion_depth_limit) {
        for (llvm::PHINode* loop_variable: loop_information.phi_nodes_in_header) {
            llvm::GetElementPtrInst* get_loop_variable_ptr = llvm::GetElementPtrInst::Create(
                loop_information.recursion_state_struct_type, // Type* PointeeType
                global_recursion_state_struct, // Value* Ptr
                {
                    llvm::ConstantInt::get(
                        llvm::Type::getInt32Ty(loop_information.context), // IntegerType* Ty
                        0, // uint64_t V
                        false // bool IsSigned = false 
                    ),
                    llvm::ConstantInt::get(
                        llvm::Type::getInt32Ty(loop_information.context), // IntegerType* Ty
                        loop_information.indices_of_loop_variables_in_recursion_state_struct[loop_variable], // uint64_t V
                        false // bool IsSigned = false 
                    )
                }, // ArrayRef<Value *> IdxList
                "", // const Twine& NameStr
                extract_next_values // BasicBlock* InsertAtEnd 
            );

            llvm::LoadInst* load_loop_variable = new llvm::LoadInst(
                loop_information.types_of_phi_nodes_in_header[loop_variable], // Type * Ty
                get_loop_variable_ptr, // Value* Ptr
                "", // const Twine& NameStr
                extract_next_values // BasicBlock* InsertAtEnd
            );

            llvm::PHINode* phi_node = llvm::PHINode::Create(
                loop_information.types_of_phi_nodes_in_header[loop_variable], // Type* Ty
                2, // unsigned NumReservedValues
                "", // const Twine& NameStr
                call_recursive_function // BasicBlock* InsertAtEnd 
            );

            llvm::Value* incoming_value_from_initialize_context = loop_information.values_of_incoming_preheader_of_phi_nodes_in_header[loop_variable];

            phi_node->addIncoming(
                incoming_value_from_initialize_context, // Value* V
                initialize_context // BasicBlock* BB
            );

            phi_node->addIncoming(
                load_loop_variable, // Value* V
                extract_next_values // BasicBlock* BB
            );

            loop_variables_and_values[loop_variable] = phi_node;
        }

        llvm::BranchInst* branch_inst = llvm::BranchInst::Create(
            call_recursive_function, // BasicBlock* IfTrue
            extract_next_values // BasicBlock* InsertAtEnd 
        );
    }
    else {
        for (llvm::PHINode* loop_variable: loop_information.phi_nodes_in_header) {
            loop_variables_and_values[loop_variable] = loop_information.values_of_incoming_preheader_of_phi_nodes_in_header[loop_variable];
        }
    }

    // initialize arguments
    std::vector<llvm::Value *> arguments(number_of_parameters);

    for (llvm::PHINode* loop_variable: loop_information.phi_nodes_in_header) {
        size_t index = indices_of_loop_variables_in_parameter_list[loop_variable];
        llvm::Value* value_of_loop_variable = loop_variables_and_values[loop_variable];
        arguments[index] = value_of_loop_variable;
    }

    if (recursion_depth_limit) {
        arguments[index_of_recursion_depth_counter_in_parameter_list] = llvm::ConstantInt::get(
            recursion_depth_counter_type, // IntegerType* Ty
            0, // uint64_t V
            false // bool IsSigned = false 
        );
    }

    // create call_recursive_function_instruction
    llvm::CallInst* call_recursive_function_instruction = llvm::CallInst::Create(
        recursive_function_type, // FunctionType* Ty
        recursive_function, // Value* F
        arguments, // ArrayRef< Value *> Args
        "", // const Twine& NameStr
        call_recursive_function // BasicBlock* InsertAtEnd 
    );

    // initialize target_after_finishing_calling_recursive_function
    llvm::BasicBlock* target_after_finishing_calling_recursive_function = nullptr;
    if (loop_information.exit_blocks.size() > 1) {
        target_after_finishing_calling_recursive_function = branch_to_exit;
    }
    else {
        llvm::BasicBlock* exit_block = *(loop_information.exit_blocks.begin());

        if (loop_information.phi_nodes_in_exit_blocks.size() > 0) {
            llvm::BasicBlock* extract_return_values_block = exit_blocks_and_extract_return_values_blocks[exit_block];

            target_after_finishing_calling_recursive_function = extract_return_values_block;
        }
        else {
            target_after_finishing_calling_recursive_function = exit_block;
        }
    }

    // branch_to_target_or_extract_next_values based on recursion_completed if recursion_depth_limit
    if (recursion_depth_limit) {
        llvm::GetElementPtrInst* get_recursion_completed_ptr = llvm::GetElementPtrInst::Create(
            loop_information.recursion_state_struct_type, // Type* PointeeType
            global_recursion_state_struct, // Value* Ptr
            {
                llvm::ConstantInt::get(
                    llvm::Type::getInt32Ty(loop_information.context), // IntegerType* Ty
                    0, // uint64_t V
                    false // bool IsSigned = false 
                ),
                llvm::ConstantInt::get(
                    llvm::Type::getInt32Ty(loop_information.context), // IntegerType* Ty
                    loop_information.index_of_recursion_completed_in_recursion_state_struct, // uint64_t V
                    false // bool IsSigned = false 
                )
            }, // ArrayRef<Value *> IdxList
            "", // const Twine& NameStr
            call_recursive_function // BasicBlock* InsertAtEnd 
        );

        llvm::LoadInst* load_recursion_completed = new llvm::LoadInst(
            llvm::Type::getInt1Ty(loop_information.context), // Type * Ty
            get_recursion_completed_ptr, // Value* Ptr
            "", // const Twine& NameStr
            call_recursive_function // BasicBlock* InsertAtEnd
        );

        llvm::BranchInst* branch_to_target_or_extract_next_values = llvm::BranchInst::Create(
            target_after_finishing_calling_recursive_function, // BasicBlock* IfTrue
            extract_next_values, // BasicBlock* ifFalse
            load_recursion_completed, // Value* Cond
            call_recursive_function // BasicBlock* InsertAtEnd 
        );
    }
    // else, branch_to_target
    else {
        llvm::BranchInst* branch_to_target = llvm::BranchInst::Create(
            target_after_finishing_calling_recursive_function, // BasicBlock* IfTrue
            call_recursive_function // BasicBlock* InsertAtEnd 
        );
    }
}

void LoopConverter::modify_branch_to_exit() {
    if (loop_information.exit_blocks.size() > 1) {
        // load_exit_block_id from global_return_value_struct
        llvm::GetElementPtrInst* get_exit_block_id_ptr = llvm::GetElementPtrInst::Create(
            loop_information.return_value_struct_type, // Type* PointeeType
            global_return_value_struct, // Value* Ptr
            {
                llvm::ConstantInt::get(
                    llvm::Type::getInt32Ty(loop_information.context), // IntegerType* Ty
                    0, // uint64_t V
                    false // bool IsSigned = false 
                ),
                llvm::ConstantInt::get(
                    llvm::Type::getInt32Ty(loop_information.context), // IntegerType* Ty
                    loop_information.index_of_exit_block_id_in_return_value_struct, // uint64_t V
                    false // bool IsSigned = false  
                ),
            }, // ArrayRef<Value *> IdxList
            "", // const Twine& NameStr
            branch_to_exit // BasicBlock* InsertAtEnd 
        );

        llvm::LoadInst* load_exit_block_id = new llvm::LoadInst(
            loop_information.exit_block_id_type, // Type * Ty
            get_exit_block_id_ptr, // Value* Ptr
            "", // const Twine& NameStr
            branch_to_exit // BasicBlock* InsertAtEnd
        );

        // initialize target, create branch_to_target_based_on_exit_block_id
        {
            auto exit_block_iterator = loop_information.exit_blocks.begin();
            llvm::BasicBlock* exit_block = *exit_block_iterator;
            llvm::BasicBlock* target = nullptr;

            if (loop_information.phi_nodes_in_exit_blocks.size() > 0) {
                target = exit_blocks_and_extract_return_values_blocks[exit_block];
            }
            else {
                target = exit_block;
            }

            llvm::SwitchInst* branch_to_target_based_on_exit_block_id = llvm::SwitchInst::Create(
                load_exit_block_id, // Value* value
                target, // BasicBlock* default
                loop_information.exit_blocks.size() - 1, // unsigned NumCases
                branch_to_exit // BasicBlock* insertAtEnd
            );

            for (auto exit_block_end = loop_information.exit_blocks.end(); exit_block_iterator != exit_block_end; ++exit_block_iterator) {
                exit_block = *exit_block_iterator;

                if (loop_information.phi_nodes_in_exit_blocks.size() > 0) {
                    target = exit_blocks_and_extract_return_values_blocks[exit_block];
                }
                else {
                    target = exit_block;
                }

                size_t exit_block_id = loop_information.exit_blocks_and_ids[exit_block];
                llvm::ConstantInt* exit_block_id_constant_int = llvm::ConstantInt::get(
                    loop_information.exit_block_id_type, // IntegerType* Ty
                    exit_block_id, // uint64_t V
                    false // bool IsSigned = false 
                );

                branch_to_target_based_on_exit_block_id->addCase(
                    exit_block_id_constant_int, // ConstantInt* OnVal, 
                    target // BasicBlock* Dest
                );
            }
        }
    }
}

void LoopConverter::modify_extract_return_values_blocks_and_exit_blocks() {
    for (llvm::BasicBlock* exit_block: loop_information.exit_blocks) {
        if (loop_information.phi_nodes_in_exit_blocks.size() > 0) {
            llvm::BasicBlock* extract_return_values_block = exit_blocks_and_extract_return_values_blocks[exit_block];

            for (llvm::PHINode* return_value: loop_information.exit_blocks_and_phi_nodes[exit_block]) {
                llvm::GetElementPtrInst* get_return_value_pointer = llvm::GetElementPtrInst::Create(
                    loop_information.return_value_struct_type, // Type* PointeeType
                    global_return_value_struct, // Value* Ptr
                    {
                        llvm::ConstantInt::get(
                            llvm::Type::getInt32Ty(loop_information.context), // IntegerType* Ty
                            0, // uint64_t V
                            false // bool IsSigned = false 
                        ),
                        llvm::ConstantInt::get(
                            llvm::Type::getInt32Ty(loop_information.context), // IntegerType* Ty
                            loop_information.indices_of_return_values_in_return_value_struct[return_value], // uint64_t V
                            false // bool IsSigned = false 
                        )
                    }, // ArrayRef<Value *> IdxList
                    "", // const Twine& NameStr
                    extract_return_values_block // BasicBlock* InsertAtEnd
                );

                llvm::LoadInst* load_return_value = new llvm::LoadInst(
                    return_value->getType(), // Type * Ty
                    get_return_value_pointer, // Value* Ptr
                    "", // const Twine& NameStr
                    extract_return_values_block // BasicBlock* InsertAtEnd
                );

                return_value->replaceAllUsesWith(load_return_value);
                return_value->eraseFromParent();
            }

            llvm::BranchInst* branch_to_exit_block = llvm::BranchInst::Create(
                exit_block, // BasicBlock* IfTrue
                extract_return_values_block // BasicBlock* InsertAtEnd 
            );
        }
    }
}

void LoopConverter::replace_captured_values() {
    if (!loop_iterations_in_recursive_function) {
        for (llvm::PHINode* phi_node: loop_information.phi_nodes_in_header) {
            llvm::Argument* loop_variable_argument = loop_variable_arguments[phi_node];
            phi_node->replaceAllUsesWith(loop_variable_argument);
            phi_node->eraseFromParent();
        }
    }

    // initialize uses_of_captured_values_to_modify
    std::vector<llvm::Use *> uses_of_captured_values_to_modify;

    for (llvm::Value* captured_value: loop_information.captured_values) {
        for (auto it = captured_value->use_begin(), end = captured_value->use_end(); it != end; ++it) {
            llvm::Use& useReference = *it;
            llvm::Use* use = &useReference;

            llvm::User* user = use->getUser();

            if (llvm::Instruction* instruction = llvm::dyn_cast<llvm::Instruction>(user)) {
                llvm::BasicBlock* basic_block = instruction->getParent();
                llvm::Function* function = basic_block->getParent();

                if (function == recursive_function) {
                    uses_of_captured_values_to_modify.push_back(use);
                }
            }
        }
    }

    // modify uses_of_captured_values
    // insert load_captured_value before each instruction
    // replace use with load_captured_value
    for (llvm::Use* use_of_captured_value_to_modify: uses_of_captured_values_to_modify) {
        llvm::Value* captured_value = use_of_captured_value_to_modify->get();
        llvm::Instruction* instruction = llvm::dyn_cast<llvm::Instruction>(use_of_captured_value_to_modify->getUser());

        llvm::LoadInst* load_captured_value = nullptr;

        // special handling of PHINode instructions: insert load_captured_value at the end of incoming_block
        if (llvm::PHINode* phi_node = llvm::dyn_cast<llvm::PHINode>(instruction)) {
            llvm::BasicBlock* incoming_block = phi_node->getIncomingBlock(*use_of_captured_value_to_modify);
            llvm::Instruction* incoming_block_terminator = incoming_block->getTerminator();

            load_captured_value = new llvm::LoadInst(
                captured_value->getType(), // Type* Ty
                captured_values_and_global_variables[captured_value], // Value* Ptr
                "", // const Twine& NameStr
                incoming_block_terminator // Instruction* InsertBefore
            );
        }
        else {
            load_captured_value = new llvm::LoadInst(
                captured_value->getType(), // Type* Ty
                captured_values_and_global_variables[captured_value], // Value* Ptr
                "", // const Twine& NameStr
                instruction // Instruction* InsertBefore
            );
        }

        use_of_captured_value_to_modify->set(load_captured_value);
    }
}
