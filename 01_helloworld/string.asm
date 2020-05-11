string_length:
  push ebx
  mov ebx, eax

string_length_loop:
  cmp byte [eax], 0
  jz string_length_end
  inc eax
  jmp string_length_loop

string_length_end:
  sub eax, ebx
  pop ebx
  ret