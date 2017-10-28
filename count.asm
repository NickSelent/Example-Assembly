.MODEL small
   .STACK 100h
   .DATA
HelloMessage DB 'Hello, world',13,10,'$'
   .CODE
   .startup
mov ah,10
again:
	sub ah,1
	cmp ah,0  ; check if AH is 0
	je endofit   ; if AH is 0 goto endofit
	push ax
	add ah,30h ; turn a digit into it's ASCII by adding 30h
	mov dl,ah
	mov ah,2
	int 21h  ; output the digit
	pop ax  ; get the number back
	jmp again ; do it again
endofit:
	mov ah,4ch
	int 21h
   END


;;---CODE START---;;
	mov ah,10
again:
	sub ah,1
	cmp ah,0  ; check if AH is 0
	je endofit   ; if AH is 0 goto endofit
	push ax
	add ah,30h ; turn a digit into it's ASCII by adding 30h
	mov dl,ah
	mov ah,2
	int 21h  ; output the digit
	pop ax  ; get the number back
	jmp again ; do it again
endofit:
	mov ah,4ch
	int 21h
;;---CODE END---;;

