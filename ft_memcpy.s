section .text
	global _ft_memcpy

_ft_memcpy:
	push		rbp
	mov			rbp, rsp
	cmp			rdx, 0
	je			end
	mov			rbx, rdi	; save *dst
	mov			rax, rdi	; dst
	mov			rcx, rdx
	cld
	rep movsb
end:
	mov			rax, rbx
	leave
	ret
