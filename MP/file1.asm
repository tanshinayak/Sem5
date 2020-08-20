.model small

.DATA
var1 DB "my name is tanshi $"

.code

.STARTUP
    
    mov ax,@DATA
    mov DS,AX
    mov DX,offset var1
    mov AH,9
    int 21H

.EXIT
END