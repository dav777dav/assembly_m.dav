extern printf 

section .data 
	text db "The number is: %d", 10, 0 
	number dd 42 

section .text 
	global main: 
main: 
	
	push rbp 
	
	mov rbp, rsp 

	mov rdi, text 
	mov rsi, [number] 
	xor rax, rax 
	call printf 
	
	pop rbp 
	
	ret 