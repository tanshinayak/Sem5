.model small

.DATA
var1 DB 10,"ENTER THE FIRST NUMBER  $"
var2 DB 10,"ENTER SECOND NUMBER  $"
.code

.STARTUP
    
    mov ax,@DATA
    mov DS,AX
    mov AH,09H
    LEA DX,VAR1
    int 21H
    
    MOV AH,1H
    INT 21H
    
    MOV BL,AL
    SUB BL,30H  
    
            
    LEA DX,VAR2
    MOV AH,09H  
    INT 21H
    
    MOV AH,1H
    INT 21H
    SUB AL,30H
    
    ADD BL,AL
    ADD BL,30H
   
    MOV DL,BL
    MOV AH,02
    INT 21H 

.EXIT
END