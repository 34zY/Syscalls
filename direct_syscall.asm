;; ===============================
;; Author : 34zY
;; Description : Direct syscall template
;; ===============================

.code

extern sys_ID : DWORD

public directSyscall

directSyscall PROC
	mov r10, rcx
	mov eax, sys_ID
	syscall
	ret
directSyscall ENDP

END