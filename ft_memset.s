section .text
	global _ft_memset

_ft_memset:
	push		rbp
	mov			rbp, rsp
	mov			rbx, rdi	; save 1st arg
	cmp			rbx, 0
	je			end
	mov			rax, rsi
	mov			rcx, rdx
	cld
    rep stosb
end:
	mov			rax, rbx
	leave
	ret
