extern printf
extern scanf

section .data
    text db "Enter a number: ", 10, 0
    message db "You entered: %d", 10, 0
    number db "%d", 0

section .bss
    num resd 1

section .text
    global main:
main:

    push rbp
    mov rbp, rsp

    mov rdi, text
    xor rax, rax
    call printf

    mov rdi, number
    mov rsi, num
    xor rax, rax
    call scanf

    
    mov rdi, message
    mov rsi, [num]
    xor rax, rax
    call printf

    mov rsp, rbp
    pop rbp

    ret