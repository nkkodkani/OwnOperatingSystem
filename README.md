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
 - After semicolon, one can insert comment in assembly language
 - These applications don't have functions and variables. Its difficult but faster.
 - It is possible to create our own Assembly language syntax, but popular - Intel and AT&T syntax
 - AT&T syntax prefixes the $ and % symbol to almost everything but intel ones are cleaner 
 - Most of the program disassemblers in linux like to use AT&T syntax 
 - x86 architecture consists of four general purpose registers (EAX, EBX, ECX and EDX) which are 32 bit 
 - These can be broken down 16 bits (AX, BX, CX and DX) and even further into 8 bits (AH, AL, BH, BL, CH, CL, DH and DL) 
   H & L registers represent high and low byte values
 
 
 
