; Hc/NtGdiEngComputeGlyphSet
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciGdiEngComputeGlyphSet:DWORD

.DATA
.CODE

HcGdiEngComputeGlyphSet PROC
	mov r10, rcx
	mov eax, sciGdiEngComputeGlyphSet
	syscall
	ret
HcGdiEngComputeGlyphSet ENDP

ELSE
; 32bit

EXTERNDEF C sciGdiEngComputeGlyphSet:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcGdiEngComputeGlyphSet PROC
	mov eax, sciGdiEngComputeGlyphSet
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
HcGdiEngComputeGlyphSet ENDP

ENDIF

END