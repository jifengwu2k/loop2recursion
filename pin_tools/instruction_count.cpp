#include <iostream>
#include <fstream>

#include "pin.H"

using std::cerr;
using std::ofstream;
using std::string;


KNOB<string> output_file(KNOB_MODE_WRITEONCE, "pintool",
    "o", "instruction_count.out", "output file");

ofstream output_file_stream;

// The running count of instructions is kept here
// make it static to help the compiler optimize
static UINT64 instruction_count = 0;


// This function is called before every instruction is executed
VOID increment_instruction_count() {
    instruction_count++; 
}

// Pin calls this function every time a new instruction is encountered
VOID instruction_callback(INS instruction, VOID* v) {
    // Insert a call to increment_instruction_count before every instruction, no arguments are passed
    INS_InsertCall(instruction, IPOINT_BEFORE, (AFUNPTR)increment_instruction_count, IARG_END);
}

// This function is called when the application exits
VOID finish_callback(INT32 code, VOID* v)
{
    // Write to a file since cout and cerr maybe closed by the application
    output_file_stream << instruction_count << '\n';

    if (output_file_stream.is_open()) {
        output_file_stream.close();
    }
}

/* ===================================================================== */
/* Print Help Message                                                    */
/* ===================================================================== */

INT32 usage() {
    cerr << "This tool counts the number of dynamic instructions executed" << '\n';
    cerr << KNOB_BASE::StringKnobSummary() << '\n';
    return EXIT_FAILURE;
}

/* ===================================================================== */
/* Main                                                                  */
/* ===================================================================== */
/*   argc, argv are the entire command line: pin -t <toolname> -- ...    */
/* ===================================================================== */

int main(int argc, char* argv[]) {
    // Initialize symbol processing
    PIN_InitSymbols();

    // Initialize pin
    if (PIN_Init(argc, argv)) return usage();

    output_file_stream.open(output_file.Value().c_str());

    // Register instruction_callback to be called to instrument instructions
    INS_AddInstrumentFunction(instruction_callback, 0);

    // Register finish_callback to be called when the application exits
    PIN_AddFiniFunction(finish_callback, 0);
    
    // Start the program, never returns
    PIN_StartProgram();
    
    return 0;
}

