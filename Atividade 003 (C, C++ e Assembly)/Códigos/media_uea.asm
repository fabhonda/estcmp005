global main
extern printf

section .text
main:
   mov rdi, informarnotas
   call printf

   mov ah, 01h
   int 21h
   mov [p1], al
   mov ah, 01h
   int 21h
   mov [p2], al
   
   mov dx, [p1]
   add dx, [p2]
   mov [soma], dx
   mov al, [soma]
   movsd xmm1, [dois]
   movsd xmm0, [soma]
   divsd xmm0, xmm1
   movsd [med], xmm0

   mov rax, [oito] 
   cmp [med], rax
   jge cond2
   mov rdi, aprovadosempf
   call printf
   jmp fim

cond2:
   mov rax, [quatro]
   cmp [med], rax
   jge cond3
   mov rdi, vaifazerpf
   call printf
   mov rax, [um]
   mov [final], rax
   jmp provafinal

cond3:
   mov rdi, reprovadosempf
   jmp fim

provafinal:
   mov rax, [um]
   cmp [final], rax
   je fim
   mov rdi, informarfinal
   call printf

   mov ah, 01h
   int 21h
   mov [pf], al

   addsd xmm0, [pf]
   movsd [med], xmm0
   movsd xmm1, [tres]
   movsd xmm0, [med]
   divsd xmm1, xmm0
   movsd [med], xmm0

   mov rax, [seis]
   cmp [final], rax
   jge reprov
   mov rdi, aprovadocompf

reprov:
   mov rdi, reprovadocompf
   call printf
   jmp fim

fim:
   ret

section .data:
   informarnotas: db "Informe suas notas da P1 e P2: ", 0
   aprovadosempf: db "Aprovado sem pf, parabéns!", 0
   vaifazerpf: db "Você está de PF!", 0
   reprovadosempf: db "Você não alcançou a média para a prova final.", 0
   informarfinal: db "Informe a nota que você tirou na PF: ", 0
   aprovadocompf: db "Parabéns, você foi aprovado com PF!", 0
   reprovadocompf: db "Você não alcançou a média com a PF para passar", 0
   p1: dq 0.0
   p2: dq 0.0
   pf: dq 0.0
   final: dq 0.0
   soma: dq 0.0
   med: dq 0.0
   um: dq 1.0
   dois: dq 2.0
   tres: dq 3.0
   quatro: dq 4.0
   seis: dq 6.0
   oito: dq 8.0