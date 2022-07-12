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

// for Loop2Recursion
#include "Loop2Recursion.h"
// for LoopInformation
#include "LoopInformation.h"
// for LoopConverter
#include "LoopConverter.h"
// for walk_tree_of_loops_bottom_up
#include "walk_tree_of_loops_bottom_up.hpp"


// Command-line arguments
static llvm::cl::opt<unsigned> recursion_depth_limit(
    "recursion-depth-limit",
    llvm::cl::init(0),
    llvm::cl::Hidden,
    llvm::cl::desc("Recursion depth limit (0 for no limit)")
);

static llvm::cl::opt<unsigned> loop_iterations(
    "loop-iterations",
    llvm::cl::init(0),
    llvm::cl::Hidden,
    llvm::cl::desc("Loop iterations in recursive function (0 for none)")
);

// Pass ID, replacement for typeid
char Loop2Recursion::ID = 0;

// Constructor
Loop2Recursion::Loop2Recursion(): llvm::FunctionPass(ID) { }

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
    std::vector<llvm::Loop *> loops_to_convert;

    if (loop_iterations && generated_recursive_functions.count(&function)) {
        for (llvm::Loop* top_level_loop: loop_info) {
            for (llvm::Loop* sub_loop: top_level_loop->getSubLoops()) {
                loops_to_convert.push_back(sub_loop);
            }
        }   
    } else {
        for (llvm::Loop* loop: loop_info) {
            loops_to_convert.push_back(loop);
        }
    }

    // Sort loops_to_convert according to the indices of the loops' headers
    std::unordered_map<llvm::Loop *, size_t> original_loop_indices;
    for (llvm::Loop* loop: loop_info) {
        original_loop_indices[loop] = original_loop_indices.size();
    }

    std::unordered_map<llvm::BasicBlock *, size_t> basic_block_indices;
    for (llvm::BasicBlock& basic_block: function) {
        basic_block_indices[&basic_block] = basic_block_indices.size();
    }

    std::sort(
        loops_to_convert.begin(), // RandomIt first
        loops_to_convert.end(), // RandomIt last
        [&basic_block_indices](llvm::Loop* first, llvm::Loop* second) {
            return basic_block_indices[first->getHeader()] < basic_block_indices[second->getHeader()];
        } // Compare comp
    );

    // Iterate each loop in the function
    for (size_t i = 0; i < loops_to_convert.size(); ++i) {
        llvm::Loop* t_loop = loops_to_convert[i];

        std::string loop_index_string = std::to_string(original_loop_indices[t_loop]);

        llvm::Twine recursive_function_name = llvm::Twine(function_name).concat(llvm::Twine('$')).concat(llvm::Twine(loop_index_string));

        LoopInformation loop_information(t_loop, &function);

        LoopConverter loop_converter(
            loop_information,
            captured_values_and_global_variables,
            recursion_depth_limit,
            loop_iterations,
            recursive_function_name
        );

        generated_recursive_functions.insert(loop_converter.recursive_function);
    }

    return true;
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
