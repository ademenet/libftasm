section .data
null: db 10

section .text
	global _ft_strdup
	extern _malloc
	extern _ft_strlen

_ft_strdup:
	push		rbp
	mov			rbp, rsp
	mov			rbx, rdi			; rbx = cont char *s1
	call		_ft_strlen
	cmp			rax, 0
	jle			error
	mov			r8, rax				; r8 = ft_strlen(s1)
	mov			rdi, rax			; s2 = malloc(size)
	call		_malloc
	cmp			rax, 0				; if (s2 == NULL) { error }
	jle			error
	mov			r9, rax				; r9 = s2
	mov			rsi, rbx			; rsi = s1
	mov			rdi, r9				; rdi = r9
	mov			rcx, r8				; rcx = size
	cld
	rep movsb
	mov			rax, r9
	jmp			end
error:
	lea			rax, [rel null]
end:
	leave
	ret