#include <stdlib.h>

#include <iostream>
#include <fstream>

#include "pin.H"

using std::cerr;
using std::ofstream;
using std::string;


const char* routine_names[] = {"uwlalloc_init", "uwlalloc_exit", "uwlalloc", "uwlfree"};

KNOB<string> initial_instruction_count(KNOB_MODE_WRITEONCE, "pintool", "i", "0", "initial instruction count");
KNOB<string> output_file(KNOB_MODE_WRITEONCE, "pintool", "o", "uwlalloc_extra_instruction_count.out", "output file");
 
ofstream output_file_stream;

// The running count of instructions is kept here
// make it static to help the compiler optimize
static bool counting_instructions = false;
static UINT64 instruction_count = 0;


VOID start_count() {
    counting_instructions = true;
}

VOID stop_count() {
    counting_instructions = false;
}

VOID increment_instruction_count() { 
    if (counting_instructions)
        ++instruction_count; 
}

// Pin calls this function every time a new instruction is encountered
VOID instruction_callback(INS instruction, VOID *v)
{
    // Insert a call to docount before every instruction, no arguments are passed
    INS_InsertCall(instruction, IPOINT_BEFORE, (AFUNPTR)increment_instruction_count, IARG_END);
}

// Pin calls this function every time a new image is loaded
// It can instrument the image, but this example does not
// Note that images (including shared libraries) are loaded lazily
VOID image_load_callback(IMG image, VOID* v) {
    for (const char* routine_name: routine_names) {
        RTN routine = RTN_FindByName(image, routine_name);
        if (RTN_Valid(routine)) {
            RTN_Open(routine);
            RTN_InsertCall(routine, IPOINT_BEFORE, (AFUNPTR)start_count, IARG_END);
            RTN_InsertCall(routine, IPOINT_AFTER, (AFUNPTR)stop_count, IARG_END);
            RTN_Close(routine);
        }
    }
}
 
// This function is called when the application exits
// It closes the output file.
VOID finish_callback(INT32 code, VOID* v) {
    output_file_stream << instruction_count << '\n';
    
    if (output_file_stream.is_open()) {
        output_file_stream.close();
    }
}
 
/* ===================================================================== */
/* Print Help Message                                                    */
/* ===================================================================== */

INT32 usage() {
    cerr << "This tool counts the number of additional dynamic instructions executed related to UWLalloc" << '\n';
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
 
    instruction_count = atoi(initial_instruction_count.Value().c_str());
    output_file_stream.open(output_file.Value().c_str());
 
    // Register image_load_callback to be called when an image is loaded
    IMG_AddInstrumentFunction(image_load_callback, 0);
    
    // Register instruction_callback to be called to instrument instructions
    INS_AddInstrumentFunction(instruction_callback, 0);
 
    // Register finish_callback to be called when the application exits
    PIN_AddFiniFunction(finish_callback, 0);
 
    // Start the program, never returns
    PIN_StartProgram();
 
    return 0;
}

