%define MACH_SYSCALL(nb)	0x2000000 | nb
%define STDOUT				1
%define WRITE				4

section .data
string:
	.null db "(null)", 10
	.len equ $ - string.null
	.newline db 10

section .text
	global _ft_puts
	extern _ft_strlen
	extern write

_ft_puts:
	push	rbp
	mov		rbp, rsp
	cmp		rdi, 0
	jle		null
	mov		rbx, rdi
	call	_ft_strlen
	cmp		rax, 0
	jle		null
	mov		rdx, rax ; len
	mov		rdi, STDOUT
	mov		rsi, rbx
	mov		rax, MACH_SYSCALL(WRITE)
	syscall
	lea		rsi, [rel string.newline]
	mov		rdx, string.len
	mov		rax, MACH_SYSCALL(WRITE)
	syscall
	jmp		end
null:
	mov		rdi, STDOUT
	lea		rsi, [rel string.null]
	mov		rdx, string.len
	mov		rax, MACH_SYSCALL(WRITE)
	syscall
end:
	mov		rax, 10
	leave
	ret
