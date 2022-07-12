#ifndef LOOP2RECURSION_H
#define LOOP2RECURSION_H

/**
 * بسم الله الرحمن الرحيم
 * 
 * File: Loop2Recursion.h
 * Author: Abbas Wu
 * 
 * 重构的Loop2Recursion接口文件
 * Refactored Loop2Recursion interface file
 * 
 * Copyright (C) 2022 Abbas Wu.
 * Distributed under the MIT License.
 */

#include <unordered_set>
#include <unordered_map>

#include <llvm/Analysis/LoopInfo.h>
#include <llvm/IR/Function.h>
#include <llvm/IR/GlobalValue.h>
#include <llvm/IR/Value.h>
#include <llvm/Pass.h>


namespace {
    class Loop2Recursion: public llvm::FunctionPass {
    public:
        // Pass ID
        static char ID;
        
        // Constructor
        Loop2Recursion();
        
        // This function should be overriden by passes that need analysis information to do their job
        void getAnalysisUsage(llvm::AnalysisUsage& analysis_usage) const override;
        
        // Virtual method overriden by subclasses to do the per-function processing of the pass
        // // A true value should be returned if the function is modified
        bool runOnFunction(llvm::Function& function) override;
    private:
        std::unordered_set<llvm::Function *> generated_recursive_functions;
        std::unordered_map<llvm::Value *, llvm::GlobalVariable *> captured_values_and_global_variables;
    };
}

#endif
