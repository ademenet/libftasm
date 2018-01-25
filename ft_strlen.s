section .text
	global _ft_strlen

_ft_strlen:
	push	rbp
	mov		rbp, rsp
	cmp		rdi, 0		; if str == NULL
	je		null
	sub		rcx, rcx	; rcx = rcx - rcx = 0
	not		rcx			; rcx = -1 or rcx = biggest number (inverse all bits)
	sub		al, al		; al = 0
	cld					; clear all flags instruction
	repne	scasb		; scan string byte: search for the first value al in rci
	not		rcx			; reversing all bits = negative the number - 1
	dec		rcx			; rcx - 1
	mov		rax, rcx
	jmp		end
null:
	mov		rax, 0
end:
	leave
	ret		
