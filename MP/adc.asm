.model small
.data
var1 DB 10,"Enter first number : $"
var2 DB 10,"Enter second number : $"
var3 DB 10,"Sum is : $"
d DB 00h

.code
m proc
    
    MOV AX,@DATA
    MOV DS,AX
    
    MOV DX,OFFSET var1
    MOV AH,9H
    INT 21H
    
    MOV AH,1H
    INT 21H
    MOV BH,AL
    
    MOV AH,1H
    INT 21H
    MOV BL,AL
    
    MOV DX,OFFSET var2
    MOV AH,9H
    INT 21H
    
    MOV AH,1H
    INT 21H
    MOV CH,AL
   
    MOV AH,1H
    INT 21H
    MOV CL,AL
    
    SUB BX,3030h
    SUB CX,3030h
    
    MOV DX,OFFSET var3
    MOV AH,9H
    INT 21H
    
    MOV AH,00h
    MOV AL,BL
    ADD AL,CL
    aaa
    MOV d,AL
    
    MOV AL,BH
    ADC AL,CH
    MOV AH,00h
    aaa
    
    MOV BX,AX
    ADD BX,3030H
    
    MOV AH,02
    MOV DL,BH
    INT 21H
    
    MOV AH,02
    MOV DL,BL
    INT 21H
    
    MOV AH,02
    MOV DL,d
    ADD DL,30h
    INT 21H
    
    MOV AH,4ch
    INT 21H
    
m endp
end m