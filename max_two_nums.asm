extern printf
extern scanf

section .data
    text1 db "Enter first number: ", 10, 0
    text2 db "Enter second number: ", 10, 0
    number_msg db "%d", 0
    max_num db "Max: %d", 10, 0

section .bss
    num1 resd 1
    num2 resd 1
    max resd 1

section .text
    global main
main:

    push rbp

    mov rdi, text1
    xor rax, rax
    call printf

    mov rdi, number_msg
    mov rsi, num1
    xor rax, rax
    call scanf

    mov rdi, text2
    xor rax, rax
    call printf

    mov rdi, number_msg
    mov rsi, num2
    xor rax, rax
    call scanf

    mov rax, [num1]
    mov rbx, [num2]
    cmp rax, rbx
    jge .max
    mov rax, rbx

.max:
    mov rdi, max_num
    mov rsi, rax
    xor rax, rax
    call printf

    pop rbp
    xor rax, rax
    ret