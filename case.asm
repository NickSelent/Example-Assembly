; program to get a character from a keyboard and then print to the screen
; Assembler: Tasm
; Operating system: MS-DOS 6.2
; compilation: Tasm test.asm
; linking:     tlink test.obj
; execution:   test.exe
 
.Model Small
.Stack 100H
.Code
   Start:
      Call Getc
      Call Putc
      Call Exit
 

      Getc:     ; gets a character from user
         ; this routine gets a character into the AX register
         Push BX
         Push CX
         Push DX
         Mov AH, 01H
         Int 21H
         Pop  DX
         Pop  CX
         Pop  BX
         Ret
 
      Putc:     ; prints a character to the screen
         Push AX
         Push BX
         Push CX
         Push DX
         Mov  DL, AL
         Mov  AH, 02H
         Int 21H
         Pop  DX
         Pop  CX
         Pop  BX
         Pop  AX
         Ret
 
      Exit:
         Mov AH, 4CH
         Int 21H
   End Start