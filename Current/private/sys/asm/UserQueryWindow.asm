; Hc/NtUserQueryWindow
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciUserQueryWindow:DWORD

.DATA
.CODE

HcUserQueryWindow PROC
	mov r10, rcx
	mov eax, sciUserQueryWindow
	syscall
	ret
HcUserQueryWindow ENDP

ELSE
; 32bit

EXTERNDEF C sciUserQueryWindow:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcUserQueryWindow PROC
	mov eax, sciUserQueryWindow
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
HcUserQueryWindow ENDP

ENDIF

END