#include <stdint.h>

#include <fstream>
#include <iostream>

#include "pin.H"


/* ===================================================================== */
/* Global Variables */
/* ===================================================================== */

static std::ofstream output_file_stream;
static bool record_memory_reads = false;
static bool go = false;

/* ===================================================================== */
/* Commandline Switches */
/* ===================================================================== */

KNOB<std::string> output_file_knob(KNOB_MODE_WRITEONCE, "pintool", "o", "memtrace.out", "specify output file");
KNOB<BOOL> record_memory_reads_knob(KNOB_MODE_WRITEONCE, "pintool", "r", "0", "record memory reads");

/* ===================================================================== */
/* Print Help Message                                                    */
/* ===================================================================== */

INT32 usage() {
    std::cerr << "This tool produces a call and memory operation trace." << '\n' << '\n';
    std::cerr << KNOB_BASE::StringKnobSummary() << '\n';
    return -1;
}

const std::string invalid = "invalid_routine";

/* ===================================================================== */
inline const std::string target_address_to_routine_name(ADDRINT target_address) {
    std::string name = RTN_FindNameByAddress(target_address);
    if (name == "")
        return invalid;
    else
        return name;
}

/* ===================================================================== */
// start after calling main 
VOID call_before_main(ADDRINT stack_pointer) {
    output_file_stream << "Start main" << ' ' << stack_pointer << '\n';
    go = true;
}

VOID call_after_main() {
    go = false;
}

VOID do_call(ADDRINT stack_pointer, const ADDRINT target_address, std::string* caller_name) {
    if (!go)
        return;
    const std::string callee_name = target_address_to_routine_name(target_address);
    output_file_stream << "Call" << ' ' << *caller_name << ' ' << callee_name << ' ' << stack_pointer << '\n';
}

VOID do_call_indirect(ADDRINT stack_pointer, ADDRINT target_address, std::string* caller_name) {
    if (!go)
        return;
    const std::string callee_name = target_address_to_routine_name(target_address);
    output_file_stream << "Indirect_Call" << ' ' << *caller_name << ' ' << callee_name << ' ' << stack_pointer << '\n';
}

VOID do_call_jump(ADDRINT stack_pointer, ADDRINT target_address, std::string* caller_name) {
    if (!go)
        return;
    PIN_LockClient();
    RTN callee = RTN_FindByAddress(target_address);
    PIN_UnlockClient();
    if (!RTN_Valid(callee))
        return;
    ADDRINT callee_address = RTN_Address(callee);
    if (callee_address != target_address)
        return;

    std::string callee_name = RTN_Name(callee);
    if (callee_name == "__syscall_error")
        return;

    output_file_stream << "Jmp_Call" << ' ' << *caller_name << ' ' << callee_name << ' ' << stack_pointer << '\n';
}

VOID do_return(ADDRINT stack_pointer, std::string* routine_name) {
    if (!go)
        return;
    output_file_stream << "Return" << ' ' << *routine_name << ' ' << stack_pointer << '\n';
}

VOID memory_read_before(ADDRINT address, ADDRINT size) {
    if (!go)
        return;

    output_file_stream << "R" << ' ' << address << ' ' << size << '\n';
}

VOID memory_write_before(ADDRINT address, ADDRINT size) {
    if (!go)
        return;

    output_file_stream << "W " << address << ' ' << size << '\n';
}

/* ===================================================================== */
/* Instrumentation routines                                              */
/* ===================================================================== */

VOID image_callback(IMG image, VOID* v) {
    // Find main. We won't do anything before main starts.
    RTN routine = RTN_FindByName(image, "main");
    if (RTN_Valid(routine)) {
        RTN_Open(routine);
        RTN_InsertCall(routine, IPOINT_BEFORE, (AFUNPTR) call_before_main,
            IARG_REG_VALUE, REG_STACK_PTR, IARG_END);
        RTN_InsertCall(routine, IPOINT_AFTER, (AFUNPTR) call_after_main, IARG_END);
        RTN_Close(routine);
    }

    for (SEC sec = IMG_SecHead(image); SEC_Valid(sec); sec = SEC_Next(sec)) {
        for (RTN routine = SEC_RtnHead(sec); RTN_Valid(routine); routine = RTN_Next(routine)) {
            RTN_Open(routine);

            for (INS instruction = RTN_InsHead(routine); INS_Valid(instruction); instruction = INS_Next(instruction)) {
                UINT32 memory_operand_count = INS_MemoryOperandCount(instruction);
                for (UINT32 memory_operand = 0; memory_operand < memory_operand_count; memory_operand++) {
                    const UINT32 size = INS_MemoryOperandSize(instruction, memory_operand);
                    if (record_memory_reads && INS_MemoryOperandIsRead(instruction, memory_operand)) {
                        INS_InsertCall(
                            instruction,
                            IPOINT_BEFORE,
                            (AFUNPTR)memory_read_before,
                            IARG_MEMORYOP_EA,
                            memory_operand,
                            IARG_ADDRINT,
                            size,
                            IARG_END
                        );
                    }
                    if (INS_MemoryOperandIsWritten(instruction, memory_operand)) {
                        INS_InsertCall(
                            instruction,
                            IPOINT_BEFORE,
                            (AFUNPTR)memory_write_before,
                            IARG_MEMORYOP_EA,
                            memory_operand,
                            IARG_ADDRINT,
                            size,
                            IARG_END
                        );
                    }
                }
            }

            RTN_Close(routine);
        }
    }
}

VOID trace_callback(TRACE trace, VOID* v) {
    RTN routine = TRACE_Rtn(trace);
    const std::string* routine_name = RTN_Valid(routine) ? new std::string(RTN_Name(routine)) : &invalid;

    for (BBL basic_block = TRACE_BblHead(trace); BBL_Valid(basic_block); basic_block = BBL_Next(basic_block)) {
        INS tail = BBL_InsTail(basic_block);

        // We need a stack_pointerecial check for RTM instructiontructions cause they are
        // defined as branch as well
        #if defined(SUPPORT_RTM)
        xed_decoded_instructiont_t const* const xedd = INS_XedDec(tail);
        xed_iclass_enum_t iclass = xed_decoded_instructiont_get_iclass(xedd);
        if (iclass == XED_ICLASS_XBEGIN || iclass == XED_ICLASS_XEND || iclass == XED_ICLASS_XABORT) {
            continue;
        }
        #endif

        if (INS_IsCall(tail)) {
            if (INS_IsDirectControlFlow(tail)) {
                const ADDRINT target = INS_DirectControlFlowTargetAddress(tail);
                INS_InsertCall(
                    tail,
                    IPOINT_BEFORE,
                    (AFUNPTR)do_call,
                    IARG_REG_VALUE,
                    REG_STACK_PTR,
                    IARG_ADDRINT,
                    target,
                    IARG_PTR,
                    routine_name,
                    IARG_END
                );
            } else {
                INS_InsertCall(
                    tail,
                    IPOINT_BEFORE,
                    (AFUNPTR)do_call_indirect,
                    IARG_REG_VALUE,
                    REG_STACK_PTR,
                    IARG_BRANCH_TARGET_ADDR,
                    IARG_PTR,
                    routine_name,
                    IARG_END
                );
            }
        }
        if (INS_IsRet(tail)) {
            INS_InsertCall(
                tail,
                IPOINT_BEFORE,
                (AFUNPTR)do_return,
                IARG_REG_VALUE,
                REG_STACK_PTR,
                IARG_PTR,
                routine_name,
                IARG_END
            );
        }
        // some tail call may occur in jmp form
        if (INS_IsDirectControlFlow(tail) && !INS_IsCall(tail)) {
            INS_InsertCall(
                tail,
                IPOINT_BEFORE,
                (AFUNPTR)do_call_jump,
                IARG_REG_VALUE,
                REG_STACK_PTR,
                IARG_BRANCH_TARGET_ADDR,
                IARG_PTR,
                routine_name,
                IARG_END
            );
        }
    }
}

/* ===================================================================== */

VOID fini_callback(INT32 code, VOID* v) {
    output_file_stream.close();
}

/* ===================================================================== */
/* Main                                                                  */
/* ===================================================================== */

int main(int argc, char* argv[]) {
    PIN_InitSymbols();

    if (PIN_Init(argc, argv)) {
        return usage();
    }

    output_file_stream.open(output_file_knob.Value().c_str());
    record_memory_reads = record_memory_reads_knob.Value();

    IMG_AddInstrumentFunction(image_callback, NULL);
    TRACE_AddInstrumentFunction(trace_callback, NULL);
    PIN_AddFiniFunction(fini_callback, NULL);

    // Never returns
    PIN_StartProgram();

    return 0;
}

/* ===================================================================== */
/* eof */
/* ===================================================================== */