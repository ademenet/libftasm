%define MACH_SYSCALL(nb)	0x2000000 | nb
%define WRITE				4

section .data
string:
	.null db 10
	.len equ $ - string.null
	.newline db 10

section .text
	global _ft_putsfd
	extern _ft_strlen
	extern write

_ft_putsfd:
	push	rbp
	mov		rbp, rsp
	mov		r11, rsi
	cmp		rdi, 0
	jle		null
	mov		rbx, rdi
	call	_ft_strlen
	cmp		rax, 0
	jle		null
	mov		rdx, rax ; len
	mov		rdi, r11
	mov		rsi, rbx
	mov		rax, MACH_SYSCALL(WRITE)
	syscall
	; lea		rsi, [rel string.newline]
	mov		rsi, 10
	mov		rdx, string.len
	mov		rax, MACH_SYSCALL(WRITE)
	syscall
	jmp		end
null:
	mov		rdi, r11
	lea		rsi, [rel string.null]
	mov		rdx, string.len
	mov		rax, MACH_SYSCALL(WRITE)
	syscall
end:
	mov		rax, 10
	leave
	ret
