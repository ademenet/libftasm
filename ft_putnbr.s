%define MACH_SYSCALL(nb)	0x2000000 | nb
%define STDOUT				1
%define WRITE				4
%define BUFF_SIZE			11

section .data
buffer:
	.buff times BUFF_SIZE db 0
	.len equ $ - buffer.buff

section .text
	extern _ft_abs
	global _ft_putnbr

; rcx : inc le compteur de 1 a chaque fois

_ft_putnbr:
	push        rbp
	mov         rbp, rsp

	mov			r9, buffer.buff
	inc			rcx							; rcx++ (len++)

	; cmp			edi, 0
	; cmp			edi, 10

	; je			eor							; if (nb == 0) { goto eor; }
	
	; sub			rsp, BUFF_SIZE			; pour stack >> ms pas besoin ?

	; mov			eax, 10
	; div			edi							; ax = quotient and ah = remainder
	; add			ah, 48						; 'nb' = nb + 48
	; mov			r9, rcx							; stock char (byte) in buffer
	; inc			r9
	; call		_ft_putnbr
; eor:
	; cmp			; ???
	; mov			rdi, STDOUT					; int fildes
	; mov			rsi, buffer.buff			; const void *buf
	; mov			rdx, rcx					; size_t nbyte
	; mov		    rax, MACH_SYSCALL(WRITE)
	; syscall
end:
	leave
	ret
