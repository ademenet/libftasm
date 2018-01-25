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
	; call	_ft_strlen
	; cmp		rax, 0
	; jle		null
	mov		rcx, 0
count:
	cmp		byte[rbx + rcx], 0
	je		print
	inc		rcx
	jmp		count
print:
	mov		rdx, rcx ; len
	cmp		rdx, 0
	je		null
	mov		rdi, STDOUT
	mov		rsi, rbx
	; mov		rdx, rax
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
