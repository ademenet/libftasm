section .text
	global _ft_memcpy

_ft_memcpy:
	enter		0, 0
	cmp			rbx, 0
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
