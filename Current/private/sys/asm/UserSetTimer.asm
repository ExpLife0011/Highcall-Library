; Hc/NtUserSetTimer
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciUserSetTimer:DWORD

.DATA
.CODE

HcUserSetTimer PROC
	mov r10, rcx
	mov eax, sciUserSetTimer
	syscall
	ret
HcUserSetTimer ENDP

ELSE
; 32bit

EXTERNDEF C sciUserSetTimer:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcUserSetTimer PROC
	mov eax, sciUserSetTimer
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
HcUserSetTimer ENDP

ENDIF

END