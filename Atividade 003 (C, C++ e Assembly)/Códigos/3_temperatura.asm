name "celsi"

org 100h

jmp start

tc db 10    ; t celsius.
tf db 0     ; t fahrenheit.

result1 db ?   ; result in fahrenheit.
result2 db ?   ; result in celsius.

start:

; convert celsius to fahrenheit 

mov cl, tc
mov al, 9
imul cl
mov cl, 5
idiv cl
add al, 32
mov result1, al

mov bl, result1
call print  ; print bl

ret  ; return to the operating system.


; procedure prints the binary value of bl
print proc near

pusha

; print result in binary:
mov cx, 8
p1:    mov ah, 2   ; print function.
       mov dl, '0'
       test bl, 10000000b  ; test first bit.
       jz zero
       mov dl, '1'
zero:  int 21h
       shl bl, 1
loop p1
; print binary suffix:
mov dl, 'b'
int 21h
; print carrige return and new line:
mov dl, 0Dh
int 21h
mov dl, 0Ah
int 21h

popa

ret  ; return to the main program.
print endp