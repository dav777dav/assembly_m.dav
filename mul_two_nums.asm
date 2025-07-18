extern printf
extern scanf

section .data
    text1 db "Enter first number: ", 0
    text2 db "Enter second number: ", 0
    result db "Product: %d", 10, 0
    scan_fmt db "%d", 0

section .bss
    num1 resd 1
    num2 resd 1

section .text
    global main
 main:

    push rbp

    mov rdi, text1
    xor rax, rax
    call printf

    mov rdi, scan
    mov rsi, num1
    xor rax, rax
    call scanf

    mov rdi, text2
    xor rax, rax
    call printf

    mov rdi, scan
    mov rsi, num2
    xor rax, rax
    call scanf

    mov rax, [num1]
    imul rax, [num2]

    mov rdi, result
    mov rsi, rax
    xor rax, rax
    call printf

    pop rbp
    ret