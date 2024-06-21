;; ===============================
;; Author : 34zY
;; Description : Indirect syscall template
;; ===============================
.code

extern sys_ID : DWORD
extern sys_Addr : QWORD

public indirectSyscall

indirectSyscall PROC
	mov r10, rcx
	mov eax, sys_ID
	jmp QWORD PTR [sys_Addr]
indirectSyscall ENDP

END