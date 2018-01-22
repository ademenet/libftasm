section .text
	global _ft_isascii

_ft_isascii:
	enter	0, 0
	mov		rbx, rdi
	cmp		rbx, 0
	jl		false			; < 0	--> false
	cmp		rbx, 127
	jg		false			; > 127	--> false
	mov		rax, 1
	leave
	ret
false:
	mov		rax, 0
	leave
	ret
