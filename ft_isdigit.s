section .text
	global _ft_isdigit

_ft_isdigit:
	enter	0, 0
	mov		rbx, rdi
	cmp		rbx, 48
	jl		false			; < '0'	--> false
	cmp		rbx, 57
	jg		false			; > '9'	--> true
	mov		rax, 1
	leave
	ret
false:
	mov		rax, 0
	leave
	ret
