.model small
.data
var1 DB 10,"Number 1 to 10 : $"

.code
m proc
    
    MOV AX,@DATA
    MOV DS,AX
    
    MOV DX,OFFSET var1
    MOV AH,9h
    INT 21H
    
    MOV cx,26
    
    MOV ah,2
    MOV dl,65
    
    l:
        INT 21h
        inc dl
        loop l
    MOV ah,4ch
    int 21H

m endp
end m