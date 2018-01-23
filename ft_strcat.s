section .text
	global _ft_strcat

_ft_strcat:
	enter	0, 0
	mov		rbx, rdi
	mov		rdx, rsi
reach_end:
	cmp		byte [rbx], 0
	je		strcat
	add		rbx, 1
	jmp		reach_end
strcat:
	mov		al, byte [rdx]
	mov		byte [rbx], al
	add		rbx, 1
	add		rdx, 1
	cmp		byte [rdx], 0
	je		end
	jmp		strcat
end:
	mov		byte [rbx], 0
	mov		rax, rdi
	leave
	ret
