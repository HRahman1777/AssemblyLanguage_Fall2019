.MODEL SMALL
.STACK 100H
.CODE
MAIN PROC
    MOV CX,19
    
    MOV AX,100
    MOV BX,100
    
    L1:
       SUB BX,5
       ADD AX,BX
       
       LOOP L1
       
       
    EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN