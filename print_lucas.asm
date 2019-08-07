section .text
; global _start Tells where the program execution begins 
global _start

_start:
  mov edx, len
  mov ecx, msg
  mov ebx, 1
  mov eax, 4
  int 0x80
  
section ,data
  ; msg to print on the screen
  msg db 'Lucas', 0xa
  
  ; store len of msg
  len equ $-msg
