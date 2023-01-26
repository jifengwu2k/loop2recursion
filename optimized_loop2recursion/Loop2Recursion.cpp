/**
 * بسم الله الرحمن الرحيم
 * 
 * File: Loop2Recursion.cpp
 * Author: Abbas Wu
 * 
 * Loop2Recursion implementation file
 * 
 * Copyright (C) 2022 Abbas Wu.
 * Distributed under the MIT License.
 */

// for assert
#include <cassert>

// for std::shared_ptr
#include <memory>
// for std::cerr
#include <iostream>
// for std::tie
#include <tuple>
// for std::unordered_map
#include <unordered_map>
// for std::unordered_set
#include <unordered_set>
// for std::vector
#include <vector>

// for llvm::AssumptionCacheTracker
#include <llvm/Analysis/AssumptionCache.h>
// for llvm::LoopInfoWrapperPass, llvm::LoopInfo, llvm::Loop
#include <llvm/Analysis/LoopInfo.h>
// for llvm::ScalarEvolutionWrapperPass
#include <llvm/Analysis/ScalarEvolution.h>
// for llvm::TargetTransformInfoWrapperPass
#include <llvm/Analysis/TargetTransformInfo.h>

// for llvm::BasicBlock
#include <llvm/IR/BasicBlock.h>
// for llvm::predecessors, llvm::successors
#include <llvm/IR/CFG.h>
// for llvm::DominatorTreeWrapperPass, llvm::DominatorTree
#include <llvm/IR/Dominators.h>
// for llvm::PHINode, llvm::BranchInst
#include <llvm/IR/Instructions.h>
// for llvm::Use
#include <llvm/IR/Use.h>
// for llvm::Value
#include <llvm/IR/Value.h>
// for llvm::RegisterPass
#include <llvm/Pass.h>
// for llvm::dyn_cast
#include <llvm/Support/Casting.h>
// for llvm::cl
#include <llvm/Support/CommandLine.h>
// for llvm::errs
#include <llvm/Support/raw_ostream.h>
// for llvm::LoopSimplifyID, llvm::LCSSAID
#include <llvm/Transforms/Utils.h>

#include <nlohmann/json.hpp>

// for Loop2Recursion
#include "Loop2Recursion.h"
// for LoopInformation
#include "LoopInformation.h"
// for LoopConverter
#include "LoopConverter.h"
// for walk_tree_of_loops_bottom_up
#include "walk_tree_of_loops_bottom_up.hpp"


// Command-line arguments
// https://llvm.org/docs/CommandLine.html
static llvm::cl::opt<bool> analyze_loop_information(
    "analyze-loop-information",
    llvm::cl::desc("Analyze loop information ONLY instead of transforming loops into recursions. Outputs JSON's to std::cerr, with each line being like `{\"function\": \"main\", \"loop_tree\": {\"main$0\": {\"main$0$0\": {}, \"main$0$1\": {}}, \"main$1\": {}}, \"loops_and_basic_blocks\": {\"main$0\": [\"while.cond84.preheader\", \"while.end97.thread\", \"while.body91.preheader\", \"while.body91\", \"while.end97\", \"for.body.preheader\", \"for.body\", \"while.cond80.loopexit.loopexit\", \"while.cond80.loopexit\"], \"main$0$0\": [\"while.body91\"], \"main$0$1\": [\"for.body\"], \"main$1\": [\"land.rhs\", \"while.body\", \"if.else37\", \"if.then45\", \"if.then35\", \"if.end54\", \"if.then56\", \"while.cond.backedge\"]}, \"basic_blocks_and_function_calls\": {\"main$0\": [\"fputc\", \"_IO_getc\", \"BF_cfb64_encrypt\", \"feof\"], \"main$0$0\": [\"feof\", \"_IO_getc\"], \"main$0$1\": [\"fputc\"], \"main$1\": []}}`")
);

static llvm::cl::opt<unsigned> recursion_depth_limit(
    "recursion-depth-limit",
    llvm::cl::init(0),
    llvm::cl::desc("Recursion depth limit (0 for no limit)")
);

static llvm::cl::opt<unsigned> loop_iterations(
    "loop-iterations",
    llvm::cl::init(0),
    llvm::cl::desc("Loop iterations in recursive function (0 for none)")
);

static llvm::cl::opt<std::string> loops_to_convert_string(
    "loops-to-convert",
    llvm::cl::init(""),
    llvm::cl::desc("Specify a JSON list of loops to convert, e.g. `[\"g$0$0\", \"g$2\"]`")
);

template <typename Callback> void recursively_build_loop_tree_json_object_with_callback(
    std::string current_level_prefix,
    nlohmann::json& current_level_json_object,
    std::vector<llvm::Loop *>& current_level_loops,
    const Callback& callback
) {
    for (size_t i = 0; i < current_level_loops.size(); ++i) {
        llvm::Loop* current_level_loop = current_level_loops.at(i);

        std::string current_level_loop_name = current_level_prefix;
        current_level_loop_name += '$';
        current_level_loop_name += std::to_string(i);

        callback(current_level_loop, current_level_loop_name);

        nlohmann::json& next_level_json_object = (current_level_json_object[current_level_loop_name] = nlohmann::json::object());
        std::vector<llvm::Loop *> next_level_loops;
        for (llvm::Loop* next_level_loop: current_level_loop->getSubLoops()) {
            next_level_loops.push_back(next_level_loop);
        }

        recursively_build_loop_tree_json_object_with_callback(
            current_level_loop_name,
            next_level_json_object,
            next_level_loops,
            callback
        );
    }
}

// Pass ID, replacement for typeid
char Loop2Recursion::ID = 0;

// Constructor
Loop2Recursion::Loop2Recursion(): llvm::FunctionPass(ID) { 
    if (loops_to_convert_string == "") {
        use_loops_to_convert = false;
    }
    else {
        use_loops_to_convert = true;

        nlohmann::json loops_to_convert_json_array = nlohmann::json::parse(loops_to_convert_string);
        assert(loops_to_convert_json_array.is_array());

        for (nlohmann::json::iterator it = loops_to_convert_json_array.begin(); it != loops_to_convert_json_array.end(); ++it) {
            std::string loop = *it;
            loops_to_convert.insert(loop);
        }
    }
}

// This function should be overriden by passes that need analysis information to do their job
void Loop2Recursion::getAnalysisUsage(llvm::AnalysisUsage& analysis_usage) const {
    // An immutable pass that tracks lazily created AssumptionCache objects
    analysis_usage.addRequired<llvm::AssumptionCacheTracker>();
    // Legacy analysis pass which computes a DominatorTree
    analysis_usage.addRequired<llvm::DominatorTreeWrapperPass>();
    // The legacy pass manager's analysis pass to compute loop information
    analysis_usage.addRequired<llvm::LoopInfoWrapperPass>();
    
    // LoopSimplify - Insert Pre-header blocks into the CFG for every function in the module
    // This pass updates dominator information, loop information, and does not add critical edges to the CFG
    analysis_usage.addRequiredID(llvm::LoopSimplifyID);
    // LCSSA - This pass inserts phi nodes at loop boundaries to simplify other loop optimizations
    analysis_usage.addRequiredID(llvm::LCSSAID);
    
    // The ScalarEvolution class is an LLVM pass which can be used to analyze and categorize scalar expressions in loops
    // It specializes in recognizing general induction variables, representing them with the abstract and opaque SCEV class
    // Given this analysis, trip counts of loops and other important properties can be obtained
    // This analysis is primarily useful for induction variable substitution and strength reduction
    analysis_usage.addRequired<llvm::ScalarEvolutionWrapperPass>();
    // Wrapper pass for TargetTransformInfo
    // This pass can be constructed from a TTI object which it stores internally and is queried by passes
    // This pass provides access to the codegen interfaces that are needed for IR-level transformations
    analysis_usage.addRequired<llvm::TargetTransformInfoWrapperPass>();
}

// Virtual method overriden by subclasses to do the per-function processing of the pass
// A true value should be returned if the function is modified
bool Loop2Recursion::runOnFunction(llvm::Function& function) {
    llvm::StringRef function_name = function.getName();

    // Get LoopInfo from LoopInfoWrapperPass
    // getAnalysis<AnalysisType>() - Subclasses of Pass use this function to get analysis information that might be around, for example to update it
    llvm::LoopInfo& loop_info = getAnalysis<llvm::LoopInfoWrapperPass>().getLoopInfo();
    
    // Get DominatorTree from DominatorTreeWrapperPass
    llvm::DominatorTree& dom_tree = getAnalysis<llvm::DominatorTreeWrapperPass>().getDomTree();

    // Convert top-level loops within the function
    // Exception: The function was converted from a loop and a portion on the loop was retained in the function.
    // In this case, second-level loops within the function are to be converted.
    std::vector<llvm::Loop *> top_level_loops;

    if (loop_iterations && generated_recursive_functions.count(&function)) {
        for (llvm::Loop* top_level_loop: loop_info) {
            for (llvm::Loop* sub_loop: top_level_loop->getSubLoops()) {
                top_level_loops.push_back(sub_loop);
            }
        }
    } else {
        for (llvm::Loop* loop: loop_info) {
            top_level_loops.push_back(loop);
        }
    }

    if (analyze_loop_information) {
        nlohmann::json function_json_object = nlohmann::json::object();

        function_json_object["name"] = function_name.str();

        // loop_tree
        nlohmann::json& loop_tree_json_object = (function_json_object["loop_tree"] = nlohmann::json::object());

        // loops_and_basic_blocks
        nlohmann::json& loops_and_basic_blocks_json_object = (function_json_object["loops_and_basic_blocks"] = nlohmann::json::object());

        // basic_blocks_and_function_calls
        nlohmann::json& basic_blocks_and_function_calls_json_object = (function_json_object["basic_blocks_and_function_calls"] = nlohmann::json::object());

        recursively_build_loop_tree_json_object_with_callback(
            function_name.str(),
            loop_tree_json_object,
            top_level_loops,
            [
                &loops_and_basic_blocks_json_object,
                &basic_blocks_and_function_calls_json_object
            ](const llvm::Loop* loop, const std::string& loop_name) {
                nlohmann::json& loop_basic_blocks_json_array = (loops_and_basic_blocks_json_object[loop_name] = nlohmann::json::array());                

                for (llvm::BasicBlock* basic_block: loop->getBlocks()) {
                    std::string basic_block_name = basic_block->getName().str();
                    loop_basic_blocks_json_array.push_back(basic_block_name);

                    nlohmann::json& basic_block_function_calls_json_array = (basic_blocks_and_function_calls_json_object[basic_block_name] = nlohmann::json::array());
                    std::unordered_set<std::string> basic_block_function_calls_set;

                    for (llvm::Instruction& instruction: basic_block->getInstList()) {
                        if (llvm::CallInst* call_inst = llvm::dyn_cast<llvm::CallInst>(&instruction)) {
                            if (llvm::Function* called_function = call_inst->getCalledFunction()) {
                                basic_block_function_calls_set.insert(called_function->getName().str());
                            }
                        }
                    }

                    for (const std::string& called_function_name: basic_block_function_calls_set) {
                        basic_block_function_calls_json_array.push_back(called_function_name);
                    }
                }
            }
        );

        std::cerr << function_json_object << '\n';

        return false;
    }
    else {
        // Sort top_level_loops according to the indices of the loops' headers
        std::unordered_map<llvm::Loop *, size_t> original_loop_indices;
        for (llvm::Loop* loop: loop_info) {
            original_loop_indices[loop] = original_loop_indices.size();
        }

        std::unordered_map<llvm::BasicBlock *, size_t> basic_block_indices;
        for (llvm::BasicBlock& basic_block: function) {
            basic_block_indices[&basic_block] = basic_block_indices.size();
        }

        std::stable_sort(
            top_level_loops.begin(), // RandomIt first
            top_level_loops.end(), // RandomIt last
            [&basic_block_indices](llvm::Loop* first, llvm::Loop* second) {
                return basic_block_indices[first->getHeader()] < basic_block_indices[second->getHeader()];
            } // Compare comp
        );

        // Iterate each loop in the function
        for (size_t i = 0; i < top_level_loops.size(); ++i) {
            llvm::Loop* t_loop = top_level_loops[i];

            std::string loop_index_string = std::to_string(original_loop_indices[t_loop]);

            llvm::Twine recursive_function_name = llvm::Twine(function_name).concat(llvm::Twine('$')).concat(llvm::Twine(loop_index_string));

            if (!use_loops_to_convert || loops_to_convert.count(recursive_function_name.str())) {
                LoopInformation loop_information(t_loop, &function);

                LoopConverter loop_converter(
                    loop_information,
                    captured_values_and_global_variables,
                    recursion_depth_limit,
                    loop_iterations,
                    recursive_function_name
                );

                generated_recursive_functions.insert(loop_converter.recursive_function);
            } else {
                std::cerr << "Skipping " << recursive_function_name.str() << '\n';
            }
        }

        return true;
    }
}

// This template class is used to notify the system that a Pass is available for use, and registers it into the internal database maintained by the PassManager
static llvm::RegisterPass<Loop2Recursion> register_loop2recursion(
    // StringRef PassArg
    "loop2recursion",
    // StringRef Name
    "Loop2Recursion",
    // bool CFGOnly
    false,
    // bool is_analysis
    false
);
