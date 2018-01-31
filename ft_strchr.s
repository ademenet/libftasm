section .text
	extern _ft_strlen
	global _ft_strchr

_ft_strchr:
	push		rbp
	mov			rbp, rsp

	cmp			rdi, 0
	je			null
	mov			r9, rdi

	call		_ft_strlen
	cmp			rax, 0
	je			null

	mov			rcx, rax
	inc			rcx
	mov			rax, rsi
	mov			rdi, r9
	cld
	repne scasb
	dec			rdi
	mov			rax, rdi
	jmp			end
null:
	mov			rax, 0
end:
	leave
	ret
