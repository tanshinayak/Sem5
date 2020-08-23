.model small
.DATA

var1 DB 10,"enter a value $"
var2 DB 10,"entered value is $"

.code
.STARTUP
   
   MOV AX,@DATA
   MOV DS,AX
  LEA DX,VAR1
   Mov AH,9h
   INT 21H
   
   Mov AH,1h
   INT 21H
   
   LEA DX,VAR2
   Mov AH,9h
   INT 21H
   
   MOV DL,Al
   MOV AH,2
   INT 21H
   
   .EXIT
   END
   