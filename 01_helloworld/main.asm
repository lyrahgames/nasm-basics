%include 'system.asm'
; %include 'string.asm'

section .data
msg1 db 'Hello, brave new World and all other people!', 0Ah, 0h
msg2 db 'This is another message!', 0Ah, 0h

section .text
global _start

_start:
  mov eax, msg1
  call sprint

  mov eax, msg2
  call sprint

  call quit
