.model small

.DATA

.code

.STARTUP
    
    mov DL, 'a'
    mov AH, 2
    int 21H
    
.EXIT
END