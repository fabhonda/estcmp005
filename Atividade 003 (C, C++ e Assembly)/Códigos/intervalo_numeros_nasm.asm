;nasm -felf64 intervalo_num.asm && gcc -o intervalo_num intervalo_num.o -no-pie && ./intervalo_num
section .data
    msg1: db "Insira o primeiro numero: ", 0
    msg1len: equ $-msg1
    msg2: db "Insira o segundo numero: ", 0
    msg2len: equ $-msg2
    msg3: db "%d", 10, 0
    formatin: db "%d", 0
    msgfinal: db "Fim do programa", 0
    msgfinallen: equ $-msgfinal
    n1: times 4 db 0;; numeros de 32 bits
    n2: times 4 db 0

section .text
    extern printf
    extern scanf
    global main

    main:

    push rbx

    ; solicita numero 1
    mov eax, 4
    mov ebx, 1
    mov ecx, msg1
    mov edx, msg1len
    int 80h

    ; le numero 1
    mov rdi, formatin
    mov rsi, n1
    mov al, 0
    call scanf

    ; msg leitura num 2
    mov eax, 4
    mov ebx, 1
    mov ecx, msg2
    mov edx, msg2len
    int 80h

    ; le numero 2
    mov rdi, formatin
    mov rsi, n2
    mov al, 0
    call scanf

    mov eax, [n1]
    mov ebx, [n2]
    cmp eax, ebx
    jge fim
    mov ebx, [n1]
    jmp laco
    
    laco:
        inc ebx
        mov rdi, msg3
        mov esi, ebx
        xor eax, eax
        call printf
        cmp ebx, [n2]
        jge fim
        jmp laco

    fim:
        mov eax, 4
        mov ebx, 1
        mov ecx, msgfinal
        mov edx, msgfinallen
        int 80h