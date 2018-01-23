%define MACH_SYSCALL(nb)	0x20000000 | nb
%define STDOUT				1
%define WRITE				4

section .text
	global _ft_puts
	extern _ft_strlen
	extern write

_ft_puts:
	enter	0, 0
	call	_ft_strlen
	cmp		rax, 0
	je		end
	mov		rbx, rdi
	mov		rdi, STDOUT
	mov		rsi, rbx
	mov		rdx, rax
	mov		rax, MACH_SYSCALL(WRITE)
	syscall
end:
	leave
	ret
