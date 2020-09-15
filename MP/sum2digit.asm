.model small

.DATA
var1 DB 10,"ENTER FIRST NUMBER  $"
var2 DB 10,"ENTER SECOND NUMBER  $"
VAR3 DB 10,"SUM IS : $"
.code

.STARTUP
    
    mov ax,@DATA
    mov DS,AX
    mov AH,09H
    ;mov DX,offset var1
    LEA DX,VAR1
    int 21H
    
    MOV AH,1H       ;FIRST INPUT.
    INT 21H
    
    MOV BL,AL       ;bl=first no
    SUB BL,30H  
    
    MOV AH,1H           
    INT 21H
    
    MOV CL,AL       ;cl=second no
    SUB CL,30H
    ;MOV AL,02H
    ;AND AL,03H
    ;ADD AL,30H
            
    LEA DX,VAR2
    MOV AH,09H  
    INT 21H
    
    MOV AH,1H
    INT 21H
    
    SUB AL,30H
    
    ADD BL,AL
    ADD BL,30H
    
    MOV AH,1H
    INT 21H
    
    SUB AL,30H
    
    ADD CL,AL
    ADD CL,30H
    
    ;ADD AL,BL
    ;ADD AL,30H
    
    ;CMP BL,09
    ;JG L1
    
    ;ADD BL,30H
    
    ;JMP L2
    
    ;L1:ADD BL,37H
    
    ;L2:
    LEA DX,VAR3
    MOV AH,09H  
    INT 21H
    
    MOV DL,BL
    MOV AH,02
    INT 21H
    
    MOV DL,CL
    MOV AH,02
    INT 21H

.EXIT
END