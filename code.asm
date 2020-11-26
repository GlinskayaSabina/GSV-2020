.486
.MODEL FLAT, STDCALL
includelib kernel32.lib
includelib ucrt.lib
includelib C:\Users\sabin\Desktop\лабы\userlib\lib\userlib.lib

ExitProcess PROTO, :DWORD
outint PROTO, :DWORD ; 1 arg [int] // out int on console

.STACK 4096
.DATA
	    a	DD	0
.CONST
	   c1	DD	23
	   c2	DD	54
	   c3	DD	0
.CODE
; ---------- - Function definitions--------------------


cea2020 PROC


	; // this is a expression!
	push	c1
	push	c2
	pop	eax
	pop	ebx
	add	eax,	ebx
	push	eax
	pop	a

	push a
	call outint

	push	c3	; // this is return of function: main
	call ExitProcess

EXIT_DIV_ON_NULL:
; // here is console output with error
cea2020 ENDP

main PROC
	call cea2020
main ENDP

end main