%define MACH_SYSCALL(nb)	0x2000000 | nb
%define STDOUT				1
%define WRITE				4
%define BUFF_SIZE			11

section .data
string: db 11

section .text
	extern _ft_abs
	extern _ft_putchar
	global _ft_putnbr

_ft_putnbr:
	push        rbp
	mov         rbp, rsp

	cmp			edi, 0			; if (nb < 0) { nb = ft_abs(nb) }
	jge			is_positive
	call		_ft_abs
	
	mov			r9, rdi
	mov			rdi, 0x2d
	call		_ft_putchar
	mov			rdi, r9

	mov			edi, eax
	; TODO  ajouter un - a afficher
is_positive:
	cmp			edi, 10			; if (nb < 10) { goto end; }
	jl			end

	xor			edx, edx
	mov			eax, edi
	mov			ecx, 10
	div			ecx

	mov			edi, eax
	call		_ft_putnbr
end:
	xor			edx, edx
	mov			eax, edi
	mov			ecx, 10
	div			ecx

	add			edx, 48

	mov			rdi, rdx
	call		_ft_putchar

	leave
	ret
