section .text
	global _ft_abs

_ft_abs:
	push		rbp
	mov			rbp, rsp
	mov			rax, rdi	; rax = rdi
	test		eax, eax	; set SF (Signed Flag) to 1 if eax < 0
	js			signed		; jump if SF == 1 (if signed)
	jmp			end
signed:
	neg			rax			; same as: not rax; add rax;
end:
	leave
	ret