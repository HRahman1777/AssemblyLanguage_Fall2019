.MODEL SMALL
.STACK 100H
.CODE
MAIN PROC
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    
    INT 21H
    MOV BH,AL
    
    ADD BH,BL
    
    SUB BH,48
    
    MOV AH,2
    MOV DL,BH
    INT 21H
    
    EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN