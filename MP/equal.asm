.model small

.DATA
var1 DB 10,"enter first number  $"
var2 DB 10,"enter second number  $"
var3 DB 10,"no. are equal: $"
var4 DB 10,"numbers are not equal $"
.code

.STARTUP
    
    mov ax,@DATA
    mov DS,AX
    mov AH,09H
    ;mov DX,offset var1
    LEA DX,VAR1
    int 21H
    
    MOV AH,1H
    INT 21H
    
    MOV BL,AL
    SUB BL,30H  
    
    ;MOV AL,02H
    ;AND AL,03H
    ;ADD AL,30H
            
    LEA DX,VAR2
    MOV AH,09H  
    INT 21H
    
    MOV AH,1H
    INT 21H
    SUB AL,30H
    
    cmp BL,AL
    
    Je L1
    lea Dx,var4
    MOV AH,9h
    INT 21H
    jmp exit
    
    
    L1:
    LEA DX,VAR3
    mov AH,9H
    int 21H
    jmp exit
    
    exit:
    mov ah,4ch
    int 21h

END