
section .data
	char: db 0

section .text
	global _ft_putchar

_ft_putchar:
	push        rbp
	mov         rbp, rsp
	mov			[rel char], rdi
	lea			rsi, [rel char]
	mov         rdi, 1
	mov		    rdx, 1
	mov		    eax, 0x2000004
	syscall
	leave
	ret
