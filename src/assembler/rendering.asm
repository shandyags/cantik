; Listing generated by Microsoft (R) Optimizing Compiler Version 19.16.27048.0 

include listing.inc

INCLUDELIB OLDNAMES

PUBLIC	??_C@_04IBBNLEM@Game@				; `string'
EXTRN	__imp_SDL_CreateWindow:PROC
EXTRN	__imp_SDL_RenderPresent:PROC
EXTRN	__imp_SDL_CreateRenderer:PROC
EXTRN	__imp_SDL_Init:PROC
EXTRN	__imp_SDL_RenderClear:PROC
;	COMDAT ??_C@_04IBBNLEM@Game@
CONST	SEGMENT
??_C@_04IBBNLEM@Game@ DB 'Game', 00H			; `string'
PUBLIC	?render@MainGame@@AEAAXXZ			; MainGame::render
PUBLIC	?initSystems@MainGame@@AEAAXXZ			; MainGame::initSystems
;	COMDAT pdata
pdata	SEGMENT
$pdata$?render@MainGame@@AEAAXXZ DD imagerel $LN4
	DD	imagerel $LN4+35
	DD	imagerel $unwind$?render@MainGame@@AEAAXXZ
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$?initSystems@MainGame@@AEAAXXZ DD imagerel $LN4
	DD	imagerel $LN4+94
	DD	imagerel $unwind$?initSystems@MainGame@@AEAAXXZ
pdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$?initSystems@MainGame@@AEAAXXZ DD 020601H
	DD	030025206H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$?render@MainGame@@AEAAXXZ DD 020601H
	DD	030023206H
; Function compile flags: /Ogtpy
;	COMDAT ?initSystems@MainGame@@AEAAXXZ
_TEXT	SEGMENT
this$ = 64
?initSystems@MainGame@@AEAAXXZ PROC			; MainGame::initSystems, COMDAT
; File c:\agil\works\programming\gamedev\sdl2\project\subur\subur\subur\rendering.cpp
; Line 4
$LN4:
	push	rbx
	sub	rsp, 48					; 00000030H
	mov	rbx, rcx
; Line 5
	mov	ecx, 62001				; 0000f231H
	call	QWORD PTR __imp_SDL_Init
; Line 7
	mov	edx, 805240832				; 2fff0000H
	mov	DWORD PTR [rsp+40], 2
	mov	r8d, edx
	mov	DWORD PTR [rsp+32], 600			; 00000258H
	mov	r9d, 800				; 00000320H
	lea	rcx, OFFSET FLAT:??_C@_04IBBNLEM@Game@
	call	QWORD PTR __imp_SDL_CreateWindow
; Line 15
	mov	edx, -1
	mov	QWORD PTR [rbx], rax
	mov	rcx, rax
	lea	r8d, QWORD PTR [rdx+7]
	call	QWORD PTR __imp_SDL_CreateRenderer
	mov	QWORD PTR [rbx+8], rax
; Line 21
	add	rsp, 48					; 00000030H
	pop	rbx
	ret	0
?initSystems@MainGame@@AEAAXXZ ENDP			; MainGame::initSystems
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT ?render@MainGame@@AEAAXXZ
_TEXT	SEGMENT
this$ = 48
?render@MainGame@@AEAAXXZ PROC				; MainGame::render, COMDAT
; File c:\agil\works\programming\gamedev\sdl2\project\subur\subur\subur\rendering.cpp
; Line 24
$LN4:
	push	rbx
	sub	rsp, 32					; 00000020H
	mov	rbx, rcx
; Line 25
	mov	rcx, QWORD PTR [rcx+8]
	call	QWORD PTR __imp_SDL_RenderClear
; Line 27
	mov	rcx, QWORD PTR [rbx+8]
; Line 28
	add	rsp, 32					; 00000020H
	pop	rbx
; Line 27
	rex_jmp	QWORD PTR __imp_SDL_RenderPresent
?render@MainGame@@AEAAXXZ ENDP				; MainGame::render
_TEXT	ENDS
END
