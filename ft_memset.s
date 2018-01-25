section .text
	global _ft_memset

_ft_memset:
	push		rbp
	mov			rbp, rsp
	cmp			rbx, 0
	je			end
	mov			rbx, rdi	; save 1st arg
	mov			rax, rsi
	mov			rcx, rdx
	cld
    rep stosb
end:
	mov			rax, rbx
	leave
	ret
