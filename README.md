# OwnOperatingSystem
Notes - "Create Your Own Operating System" by Lucas Darnell

# Introduction:
- Writing OS is easy than expanding as we don't have the luxary of using readily available libraries

# Chapter: 0x01 OS Basics

Location:
- OS can be stored in HDD/SSD/Flash drive but is moved into memory when system is ready to operate

Primary responsibility:
- OS provides common interface for applications to interact with (different) physical hardware

Tasks:

1. Manage usage of the processor: 
- First it divides the processor's work into manageable chuncks and then prioritizes these chuncks before sending them
  to CPU for processing and execution
  
2. Memory management:
- Types of memmory management
  
  i) Single Contiguous Allocation: First provide enough memory for running OS then rest is made avaiable to a single application
  Example: MS-DOS, Embedded Systems
  
  ii) Partitioned Allocation: Memory is divided into multiple partitions and then each partition is allocated to specific job and then untimately memory is unallocated or reallocated when tasks are completed
  
  iii) Paged management: System divides all of its memory into equal fixed-sized units called "page frames". As applications are loaded, their virtual address spaces are then divided into pages of the same size.
  
  iv) Segmented Management: System takes a "chunk" of an application and loads it into a memory segment by itself. Memory segment is allocated based on the size of the "chunk" being loaded and prevents other application from accessing the same memory space.
  
 3. Interpreting input from peripherals
 4. Managing devices for storing data
 5. Provide UI to interact with system
 
 # Chapter: 0x02 Intro to Machine Code
 - Push string of numbers into Memory -> CPU process -> Take form of higher or low voltage -> Tiny transistors change their state to be either ON/OFF. This shifting of state controls "logic gate" which can be ON/OFF
 - Nibble - 4bits
 - Each nibble is one hexadecimal digit (i.e 0-9 or A-F)
 
 # Chapter: 0x03 Intro to the Assembly Programming Language
 - "Assembly" allows us to write applications using add, call and push these words are known as "mnemonics" and translated back into machine code by programs - "Assemblers"
  Example: MOV EAX, 0x1234 ;Move data "0x1234" into EAX register. Instead of hex can use decimal or ascii values
           MOV destinaton, source
 - After semicolon, one can insert comment in assembly language
 - These applications don't have functions and variables. Its difficult but faster.
 - It is possible to create our own Assembly language syntax, but popular - Intel and AT&T syntax
 - AT&T syntax prefixes the $ and % symbol to almost everything but intel ones are cleaner 
 - Most of the program disassemblers in linux like to use AT&T syntax 
 - x86 architecture consists of four general purpose registers (EAX, EBX, ECX and EDX) which are 32 bit 
 - These can be broken down 16 bits (AX, BX, CX and DX) and even further into 8 bits (AH, AL, BH, BL, CH, CL, DH and DL) 
   H & L registers represent high and low byte values
 - "A" (EAX, AX, AH, AL) - Accumulator registers. These are used for I/O (input/output), arithmetic, interrupt calls, etc
 - "B" (EBX, BX, BH and BL) - Base pointers for memory access
 - "C" (CBX, CX, CH and CL) - Counter registers. Used as loop counters and for shifts
 - "D" (EDX, DX, DH and DL) - Data registers. Same as "A" are used for I/O (input/output), arithmetic, interrupt calls, etc.
 - Bottom four rows represent indexes (ESI and EDI) and pointers (ESP and EBP). These registers are responsible for pointing
   to memory addresses where other code is stored and referenced 
   
   Examples:
 
   mov [var], ebx             
   ;Before we use our variable we need to define it as ".data"               
   .data                  
   var db 32             
   ;or           
   var db ?            
 
   DB - Define Byte: 1 byte = 8 bits         
   DW - Define Word - 2 bytes = 16 bits            
   DD - Define Double Word - 4 bytes = 32 bits                
   
   "int" - interrupt: tells hardware to stop what it is doing and do whatever comes next 
   Example: int 0x80
   
   push: Place operand on the top of the hardware memory. Its the stack so every time push is called it grows from high to low address
   I. Decrement ESP by 4    II. Place operand at address of ESP (stack pointer)
   
   Example: push eax
   
   popd: Remove 4 bytes data element from the top of the hardware stack (esp) move it into the mem location at sp and then inc sp by 4
   
   Example: pop ebx
   
   Other instructions:
   Arithmetic & Logic instructions: add, sub, inc, dec, and, or, xor and not
   jmp: Transfers program control flow to the instruction at the memory location indicated by operand
   call: Calls out to another subroutine example code in kernel
   
   SECTIONS:
   I] .data:
   - global variables
   - declare initialized data and constants
   - read and write access
   - Example Filename & buffer sizes
   II] .text:
   - perform operations
   - read only
   III] .bss:
    - declare variables @ runtime
    
   Note: .bss and .data can be used interchangeable though
   Refer: print_lucas.asm
   
  # Chapter: 0x04 Intro to the C Programming Language
   
   - C has procedures vs Assembly has section. main procedure is mapped to -start in assembly
   - puts can't use format specifiers like printf just can print one argument 
   - puts appends "\n" by default at the end unlike printf
   - In #include statement, the file enclosed in <> means compiler should look in library version then local file directory
   - In #include statement, the file enclosed in "" means compiler should look in local file directory and then library version
   - "void" keyword is a pointer and can be used as a pointer either to procedures or to variables
   - The main purpose of the void pointer is to simply hold a memory address so that we know about the code in mem location
   
   Example:
   int main(int argc, char *argv[]) {
    //printing argv[0] -> print program name then it will start printing the argument passed at runtime
   }
   
   # Chapter: 0x05 Getting Started
   
   - Install virtualbox and then install CentOS
   
   # Chapter: 0x06 Bootstrapping with the Bootloader
   
   - When you power on a computer, the firt thing to run is what known as BIOS (Basic Input Output System). 
   - POST (Power On Self Test): BIOS verifies that all hardware is powered on and good to use. This test is POST.
   - 
