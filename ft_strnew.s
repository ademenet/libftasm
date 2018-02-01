section .text
	extern _malloc
	extern _ft_bzero
    global _ft_strnew

_ft_strnew:
	push	rbp
	mov		rbp, rsp

	cmp		rdi, 0
	mov		rax, 0
	je		end

	inc		rdi
	call	_malloc

	mov		rsi, rdi ; len
	mov		rdi, rax ; str
	call	_ft_bzero

	mov		byte [rdi + rsi], 0
end:
	leave
	ret