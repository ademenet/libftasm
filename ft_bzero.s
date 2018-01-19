.section text
	global _ft_bzero

_ft_bzero:
	push	rbp
	mov		rbp, rsp
	mov		rbx, rdi
	mov		rcx, rsi
	

inner_loop:


end:
	leave
	ret
