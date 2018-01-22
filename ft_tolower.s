section .text
	global _ft_tolower

_ft_tolower:
	enter	0, 0
    mov     rbx, rdi
    cmp     rbx, 65
    jl      end
    cmp     rbx, 90
    jg      end
    add     rbx, 32
end:
    mov     rax, rbx
	leave
	ret
