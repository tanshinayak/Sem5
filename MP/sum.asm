.model small

.DATA
var1 DB 10,"Sum Of Number Is  $"

.code

.STARTUP
    
    mov ax,@DATA
    mov DS,AX
    mov AH,09h
    ;mov dx,OFFSET var1
    LEA DX,VAR1
    int 21H
    
    MOV AL,02H
    ADD AL,03H
    add al,30h
    
    MOV DL,AL
    MOV AH,02H   
    INT 21H
    
    MOV AH,4CH
    INT 21H

.EXIT
END