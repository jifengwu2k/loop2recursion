#include <stdint.h>

#include <fstream>
#include <iostream>
#include <set>

#include "pin.H"


/* ===================================================================== */
/* Global Variables */
/* ===================================================================== */

static std::ofstream output_file_stream;
static bool go = false;

/* ===================================================================== */
/* Commandline Switches */
/* ===================================================================== */

KNOB<std::string> output_file_knob(KNOB_MODE_WRITEONCE, "pintool", "o", "memtrace.out", "specify output file");

/* ===================================================================== */
/* Print Help Message                                                    */
/* ===================================================================== */

INT32 usage() {
    std::cerr << "This tool produces a memory operation trace." << '\n' << '\n';
    std::cerr << KNOB_BASE::StringKnobSummary() << '\n';
    return -1;
}

/* ===================================================================== */
// start after calling main 
VOID call_before_main() {
    go = true;
}

VOID call_after_main() {
    go = false;
}

VOID memory_read_before(ADDRINT instruction_address, ADDRINT address, ADDRINT size) {
    if (!go)
        return;

    output_file_stream << "R" << ' ' << instruction_address << ' ' << address << ' ' << size << '\n';
}

VOID memory_write_before(ADDRINT instruction_address, ADDRINT address, ADDRINT size) {
    if (!go)
        return;

    output_file_stream << "W " << ' ' << instruction_address << ' ' << address << ' ' << size << '\n';
}

/* ===================================================================== */
/* Instrumentation routines                                              */
/* ===================================================================== */

VOID image_callback(IMG image, VOID* v) {
    // Find main. We won't do anything before main starts.
    RTN routine = RTN_FindByName(image, "main");
    if (RTN_Valid(routine)) {
        RTN_Open(routine);
        RTN_InsertCall(routine, IPOINT_BEFORE, (AFUNPTR)call_before_main, IARG_END);
        RTN_InsertCall(routine, IPOINT_AFTER, (AFUNPTR)call_after_main, IARG_END);
        RTN_Close(routine);
    }

    for (SEC sec = IMG_SecHead(image); SEC_Valid(sec); sec = SEC_Next(sec)) {
        for (RTN routine = SEC_RtnHead(sec); RTN_Valid(routine); routine = RTN_Next(routine)) {
            RTN_Open(routine);

            for (INS instruction = RTN_InsHead(routine); INS_Valid(instruction); instruction = INS_Next(instruction)) {
                ADDRINT instruction_address = INS_Address(instruction);

                UINT32 memory_operand_count = INS_MemoryOperandCount(instruction);
                for (UINT32 memory_operand = 0; memory_operand < memory_operand_count; memory_operand++) {
                    const UINT32 size = INS_MemoryOperandSize(instruction, memory_operand);
                    if (INS_MemoryOperandIsRead(instruction, memory_operand)) {
                        INS_InsertCall(
                            instruction,
                            IPOINT_BEFORE,
                            (AFUNPTR)memory_read_before,
                            IARG_ADDRINT,
                            instruction_address,
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
                            IARG_ADDRINT,
                            instruction_address,
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

    IMG_AddInstrumentFunction(image_callback, NULL);
    PIN_AddFiniFunction(fini_callback, NULL);

    // Never returns
    PIN_StartProgram();

    return 0;
}

/* ===================================================================== */
/* eof */
/* ===================================================================== */