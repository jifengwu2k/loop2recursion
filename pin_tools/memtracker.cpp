#include "pin.H"
#include <iostream>
#include <fstream>
#include <stdint.h>

#if defined(TARGET_MAC)
#define MALLOC "_malloc"
#define FREE "_free"
#else
#define MALLOC "malloc"
#define FREE "free"
#endif

using namespace std;

/* ===================================================================== */
/* Global Variables */
/* ===================================================================== */

std::ofstream TraceFile;

bool go = false;

uint32_t mallocSize;

bool outsideMalloc;

/* ===================================================================== */
/* Commandline Switches */
/* ===================================================================== */

KNOB<string> KnobOutputFile(KNOB_MODE_WRITEONCE, "pintool", "o", "memtrace.out", "specify trace file name");
KNOB<BOOL>   KnobMarkIndirectCalls(KNOB_MODE_WRITEONCE, "pintool", "i", "1", "mark indirect calls ");


/* ===================================================================== */
/* Print Help Message                                                    */
/* ===================================================================== */

INT32 Usage()
{
    cerr << "This tool produces a call and memory operation trace." << endl << endl;
    cerr << KNOB_BASE::StringKnobSummary() << endl;
    return -1;
}

string invalid = "invalid_rtn";

/* ===================================================================== */
const string *Target2String(ADDRINT target)
{
    string name = RTN_FindNameByAddress(target);
    if (name == "")
        return &invalid;
    else
        return new string(name);
}

const char *StripPath(const char * path) 
{
    const char * file = strrchr(path, '/');
    if (file) 
        return file + 1;
    else
        return path;
}

/* ===================================================================== */
// start after calling main 
VOID callBeforeMain(ADDRINT sp)
{
    TraceFile << "Start main " << sp << endl;
    go = true;
}

VOID callAfterMain()
{
    go = false;
}

// Instrument malloc and free function
VOID MallocBefore(ADDRINT size, CHAR * imageName)
{
    if (!go)
        return;
    mallocSize = size;
    outsideMalloc = false;
}

VOID MallocAfter(ADDRINT ret)
{
    if (!go)
        return;
    TraceFile << "Malloc " << ret << " " << mallocSize << endl;
    outsideMalloc = true;
}

VOID FreeBefore(ADDRINT ip)
{
    if (!go)
        return;
    TraceFile << "Free " << ip << endl;
}

VOID do_call(ADDRINT sp, const ADDRINT target, string *rtnName)
{
    if (!go)
        return;
    const string *calleeName = Target2String(target);
    TraceFile << "Call " << *rtnName << " -> " << *calleeName << " " << sp << endl;
}


VOID do_call_indirect(ADDRINT sp, ADDRINT target, string *rtnName)
{
    if (!go)
        return;
    const string *calleeName = Target2String(target);
    if (KnobMarkIndirectCalls.Value()) {
        TraceFile << "Indirect_Call " << *rtnName << " -> " << *calleeName << " " << sp << endl;
    } else {
        TraceFile << "Call " << *rtnName << " -> " << *calleeName << " " << sp << endl;
    }
}

VOID do_call_jump(ADDRINT sp, ADDRINT target, string *callerName)
{
    if (!go)
        return;
    PIN_LockClient();
    RTN callee = RTN_FindByAddress(target);
    PIN_UnlockClient();
    if (!RTN_Valid(callee))
        return;
    ADDRINT calleeAddr = RTN_Address(callee);
    if (calleeAddr != target)
        return;

    string calleeName = RTN_Name(callee);
    if (calleeName == "__syscall_error")
        return;

    TraceFile << "Jmp_Call " << *callerName << " -> " << calleeName << "    " << sp << endl;
}


VOID do_return(ADDRINT sp, string *rtnName)
{
    if (!go)
        return;
    TraceFile << "Return " << *rtnName << "    "  << sp << endl;
}

VOID MemWriteBefore(ADDRINT addr, ADDRINT size) 
{
    if (!go)
        return;

    TraceFile << "W " << addr << " " << size << endl;
    
}


/* ===================================================================== */
/* Instrumentation routines                                              */
/* ===================================================================== */

VOID Image(IMG img, VOID *v)
{
    // Find main. We won't do anything before main starts.
    RTN rtn = RTN_FindByName(img, "main");
    if (RTN_Valid(rtn))
    {
        RTN_Open(rtn);
        RTN_InsertCall(rtn, IPOINT_BEFORE, (AFUNPTR)callBeforeMain, 
                       IARG_REG_VALUE, REG_STACK_PTR, IARG_END);
        RTN_InsertCall(rtn, IPOINT_AFTER, (AFUNPTR)callAfterMain, IARG_END);
        RTN_Close(rtn);
    }


    // Find the malloc() function
    RTN mallocRtn = RTN_FindByName(img, MALLOC);
    if (RTN_Valid(mallocRtn))
    {
        RTN_Open(mallocRtn);

        // Instrument malloc() to print the input argument value and the return value.
        RTN_InsertCall(mallocRtn, IPOINT_BEFORE, (AFUNPTR)MallocBefore,
                       IARG_FUNCARG_ENTRYPOINT_VALUE, 0,
                       IARG_END);
        RTN_InsertCall(mallocRtn, IPOINT_AFTER, (AFUNPTR)MallocAfter,
                       IARG_FUNCRET_EXITPOINT_VALUE, IARG_END);

        RTN_Close(mallocRtn);
    }

    // Find the free() function.
    RTN freeRtn = RTN_FindByName(img, FREE);
    if (RTN_Valid(freeRtn))
    {
        RTN_Open(freeRtn);
        // Instrument free() to print the input argument value.
        RTN_InsertCall(freeRtn, IPOINT_BEFORE, (AFUNPTR)FreeBefore,
                       IARG_FUNCARG_ENTRYPOINT_VALUE, 0,
                       IARG_END);
        RTN_Close(freeRtn);
    }

    for (SEC sec = IMG_SecHead(img); SEC_Valid(sec); sec = SEC_Next(sec))
    {     
        for (RTN rtn = SEC_RtnHead(sec); RTN_Valid(rtn); rtn = RTN_Next(rtn))
        {
            RTN_Open(rtn);
            // const char * rtnName = StripPath(RTN_Name(rtn).c_str());

            for (INS ins = RTN_InsHead(rtn); INS_Valid(ins); ins = INS_Next(ins))
            {
                UINT32 memOperands = INS_MemoryOperandCount(ins);
                for (UINT32 memOp = 0; memOp < memOperands; memOp++)
                {    
                    const UINT32 size = INS_MemoryOperandSize(ins, memOp);
                    if (INS_MemoryOperandIsWritten(ins, memOp))
                    {
                        INS_InsertCall(ins, IPOINT_BEFORE, (AFUNPTR)MemWriteBefore, 
                            IARG_MEMORYOP_EA, memOp,
                            IARG_ADDRINT, size, IARG_END);
                    }
                }
            }
            
            RTN_Close(rtn);
        } 
    }
}

VOID Trace(TRACE trace, VOID *v) {
    RTN rtn = TRACE_Rtn(trace);
    string *rtnName;
    if (RTN_Valid(rtn))
        rtnName = new string(RTN_Name(rtn));
    else
        rtnName = &invalid;

    for (BBL bbl = TRACE_BblHead(trace); BBL_Valid(bbl); bbl = BBL_Next(bbl)) {
        INS tail = BBL_InsTail(bbl);

        // We need a special check for RTM instructions cause they are
        // defined as branch as well
#if defined(SUPPORT_RTM)
        xed_decoded_inst_t const* const xedd = INS_XedDec(tail);
        xed_iclass_enum_t iclass = xed_decoded_inst_get_iclass(xedd);
        if (iclass == XED_ICLASS_XBEGIN || iclass == XED_ICLASS_XEND ||
            iclass == XED_ICLASS_XABORT) {
            continue;
        }
#endif

        if (INS_IsCall(tail)) {
            if (INS_IsDirectControlFlow(tail)) {
                const ADDRINT target = INS_DirectControlFlowTargetAddress(tail);
                INS_InsertCall(tail, IPOINT_BEFORE, AFUNPTR(do_call), 
                                IARG_REG_VALUE, REG_STACK_PTR, 
                                IARG_ADDRINT, target, 
                                IARG_PTR, rtnName, IARG_END);
            } else {
                INS_InsertCall(tail, IPOINT_BEFORE, AFUNPTR(do_call_indirect),
                                IARG_REG_VALUE, REG_STACK_PTR, 
                                IARG_BRANCH_TARGET_ADDR, 
                                IARG_PTR, rtnName, IARG_END);
            }
        }
        if (INS_IsRet(tail)) {
            INS_InsertCall(tail, IPOINT_BEFORE, (AFUNPTR)do_return,
                            IARG_REG_VALUE, REG_STACK_PTR,
                            IARG_PTR, rtnName, 
                            IARG_END);
        }
        // some tail call may occur in jmp form
        if (INS_IsDirectControlFlow(tail) && !INS_IsCall(tail)) {
            INS_InsertCall(tail, IPOINT_BEFORE, AFUNPTR(do_call_jump),
                            IARG_REG_VALUE, REG_STACK_PTR, 
                            IARG_BRANCH_TARGET_ADDR, 
                            IARG_PTR, rtnName, IARG_END);
        }
    }

}


/* ===================================================================== */

VOID Fini(INT32 code, VOID *v)
{
    TraceFile << "# eof" << endl;
    
    TraceFile.close();

}

/* ===================================================================== */
/* Main                                                                  */
/* ===================================================================== */

int  main(int argc, char *argv[])
{
    
    PIN_InitSymbols();

    if( PIN_Init(argc,argv) )
    {
        return Usage();
    }
    

    TraceFile.open(KnobOutputFile.Value().c_str());

    TraceFile << hex;
    TraceFile.setf(ios::showbase);
    
    string trace_header = string("#\n"
                                 "# Memory Trace Generated By Pin\n"
                                 "#\n");
    

    TraceFile.write(trace_header.c_str(),trace_header.size());
    
    IMG_AddInstrumentFunction(Image, 0);
    TRACE_AddInstrumentFunction(Trace, 0);
    PIN_AddFiniFunction(Fini, 0);

    // Never returns

    PIN_StartProgram();
    
    return 0;
}

/* ===================================================================== */
/* eof */
/* ===================================================================== */