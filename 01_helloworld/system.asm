%include 'string.asm'

sprint:
  push edx
  push ecx
  push ebx
  push eax
  call string_length

  mov edx, eax
  pop eax

  mov ecx, eax
  mov ebx, 1
  mov eax, 4
  int 80h

  pop ebx
  pop ecx
  pop edx
  ret

quit:
  mov ebx, 0
  mov eax, 1
  int 80h
  ret