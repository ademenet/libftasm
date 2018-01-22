section .text
	global _ft_toupper

_ft_toupper:
	enter	0, 0
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
