; Hc/NtUserProcessConnect
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciUserProcessConnect:DWORD

.DATA
.CODE

HcUserProcessConnect PROC
	mov r10, rcx
	mov eax, sciUserProcessConnect
	syscall
	ret
HcUserProcessConnect ENDP

ELSE
; 32bit

EXTERNDEF C sciUserProcessConnect:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcUserProcessConnect PROC
	mov eax, sciUserProcessConnect
	mov ecx, fs:[0c0h]
	test ecx, ecx
	jne _wow64
	lea edx, [esp + 4]
	INT 02eh
	ret
	_wow64:
	xor ecx, ecx
	lea edx, [esp + 4h]
	call dword ptr fs:[0c0h]
	ret
HcUserProcessConnect ENDP

ENDIF

END