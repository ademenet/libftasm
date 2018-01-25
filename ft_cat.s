%define BUFF_SIZE		2096

section .data
buffer:


section .text
	global _ft_cat

_ft_cat:
	push		rbp
	mov			rbp, rsp

end:
	xor			rax, rax
	leave
soajs	ret