section .text
	global _ft_isalpha

_ft_isalpha:
	push	rbp
	mov		rbp, rsp
	mov		rbx, rdi
	cmp		rbx, 65
	jl		cmp_97			; < 'A'		--> cmp_97
	cmp		rbx, 90
	jle		true			; <= 'Z'	--> true
cmp_97:
	cmp		rbx, 97
	jl		false			; < 'a'		--> false
	cmp		rbx, 122
	jg		false			; > 'z'		--> false
true:
	mov		rax, 1
	jmp 	end
false:
	mov		rax, 0
end:
	leave
	ret
