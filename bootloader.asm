bits 16

start:
  mov ax, 0x07c0
  add ax, 0x20
  mov ss,ax
  mov sp, 4096
  
  mov ax, 0x07c0
  mov ds, ax
  
  mov si, msg
  call print
  cli
  hlt
  
 data:
  msg db 'Hello World', 0
  
 print:
  mov ah, 0x0e
  
 .printchar:
  lodsb
  cmp al,0
  je .done
  int 0x10
  jmp .printchar
  
 .done:
  ret
  
 times 510 - ($ - $$ ) db 0
 dw 0xaa55
 
