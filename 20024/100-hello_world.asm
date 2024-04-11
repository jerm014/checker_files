	section .rodata		  ; rodata section

msg:	db "Hello, World", 10  ; the string to print, 10 = cr
	len	equ $-msg			  ; "$" means "here"
	;;   len is a value, not an address

	section .text			  ; code section
	global main			  ; make label available to linker

main:					  ; standard gcc entry point
	mov	rdx, len			  ; arg3, length of string to print
	mov	rcx, msg			  ; arg2, address of the string
	mov	rbx, 1			  ; arg1, where to write, standard error
	mov	rax, 4			  ; system call number (sys_write)
	int	0x80				  ; interrupt 80 hex, call kernel

	mov	rbx, 0			  ; exit code, 0 = normal
	mov	rax, 1			  ; system call number (sys_exit)
	int	0x80				  ; interrupt 80 hex, call kernel
