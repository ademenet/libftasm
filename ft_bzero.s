section .text
	global _ft_bzero

_ft_bzero:
	enter	0, 0
	mov		rbx, rdi
	mov		rcx, rsi
loop_1:
	add		rcx, -1
	mov		byte [rbx], 0
	inc		rbx
	cmp		rcx, 0
	je		end
	jmp		loop_1
end:
	leave
	ret
