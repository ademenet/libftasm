%define MACH_SYSCALL(nb)	0x2000000 | nb
%define STDOUT				1
%define READ				3
%define WRITE				4
%define BUFF_SIZE			2096

section .data
buffer:
	.buff times BUFF_SIZE db 0
	.len equ $ - buffer.buff

section .text
	global _ft_cat

_ft_cat:
	push		rbp
	mov			rbp, rsp
	sub			rsp, 4
	push		rdi
	cmp			rdi, 0						; if (fd < 0) { goto end; }
	jl			end
read:
	mov			rax, MACH_SYSCALL(READ)		; read(fd(rdi), rsi(buff), rdx(size))
	lea			rsi, [rel buffer.buff]
	mov			rdx, BUFF_SIZE
	syscall
	jc			end
	cmp			rax, 0
	jle			end
	mov			rdi, 1
	lea			rsi, [rel buffer.buff]
	mov			rdx, rax
	mov			rax, MACH_SYSCALL(WRITE)
	syscall
	pop			rdi
	jmp			read
end:
	xor			rax, rax
	leave
	ret