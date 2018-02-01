section .text
    extern _ft_strlen
    extern _ft_memset
    global _ft_strclr

_ft_strclr:
    push        rbp
    mov         rbp, rsp
    cmp         rdi, 0
    je          end
    
    call        _ft_strlen
    cmp         rax, 0
    je          end

    mov         rdx, rax ; len
    mov         rsi, 0 ; c
    call        _ft_memset
end:
    leave
    ret