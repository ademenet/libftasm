section .text
	global _ft_toupper

_ft_toupper:
	push    rbp
    mov     rbp, rsp
    mov     rbx, rdi
    cmp     rbx, 97
    jl      end
    cmp     rbx, 122
    jg      end
    sub     rbx, 32
end:
    mov     rax, rbx
	leave
	ret
