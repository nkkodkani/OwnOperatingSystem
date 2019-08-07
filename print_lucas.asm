section .text
; global _start tells where the program execution begins 
; global directive tells NASM to load the _start symbol
; _start tell NASM entry point of the application
; _start can be named something else its specific o NASM compiler
global _start

_start:
  ; Tells the system to allocate [len] bytes so that we can store [msg] in that allocated space
  mov edx, len
  mov ecx, msg
  
  ; standard out aka print to the terminal
  mov ebx, 1
  
  ; call to the sys_write
  mov eax, 4
  
  ; interrupt which passes the control to the kernel allow system calls such as printing msg
  int 0x80
  
  ; sys_exit tells system has completed
  mov eax,1
  
  ; give control back to kernel to process next in stack
  int 0x80
  
section ,data
  ; msg to print on the screen
  msg db 'Lucas', 0xa
  
  ; store len of msg
  len equ $-msg
