section .text
    global ft_isalpha

ft_isalpha:
    ; mov		rbp
	; mov		rbp, rsp
	enter
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
	mov		eax, 1
	jmp 	end
false:
	mov		eax, 0
end:
	leave
	ret
