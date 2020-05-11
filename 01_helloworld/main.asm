section .data
msg db 'Hello, brave new World and all other people!', 0Ah

section .text
global _start

_start:
  mov eax, msg
  call strlen

  mov edx, eax
  mov ecx, msg
  mov ebx, 1
  mov eax, 4
  int 80h

  mov ebx, 0
  mov eax, 1
  int 80h


strlen:
  push ebx
  mov ebx, eax
strlen_loop:
  cmp byte [eax], 0
  jz strlen_end
  inc eax
  jmp strlen_loop
strlen_end:
  sub eax, ebx
  pop ebx
  ret