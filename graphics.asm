MODEL MEDIUM
.STACK 200H
.CODE
START:
mov ax, 0013h 
int 10h

mov bx, 0A000h
mov es, bx

mov bx, 0
mov ah, 1

mov cx, 64000

startloop:
mov es:[bx], ah
inc bx
loop startloop

mov ax, 0100h
int 21h

mov ax, 4c00h
int 21h

END START