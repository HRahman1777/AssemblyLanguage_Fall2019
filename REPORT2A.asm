.MODEL SMALL
.STACK 100H
.CODE
MAIN PROC
    MOV CX,49
    
    MOV AX,1
    MOV BX,1
    
    L1:
       ADD BX,3
       ADD AX,BX
       
       LOOP L1
       
       
    EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN