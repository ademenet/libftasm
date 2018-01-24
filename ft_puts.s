%define MACH_SYSCALL(nb)	0x2000000 | nb
%define STDOUT				1
%define WRITE				4

; section .data
; hello:
; 	.string db "Hello", 10
; 	.len equ $ - hello.string

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
	; lea		rsi, [rel hello.string]
	mov		rdx, rax
	; mov		rdx, hello.len
	mov		rax, MACH_SYSCALL(WRITE)
	syscall
end:
	; mov		rax, 10
	leave
	ret
