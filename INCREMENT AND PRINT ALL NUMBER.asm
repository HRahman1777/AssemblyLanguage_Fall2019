.MODEL SMALL
.STACK 100H
.CODE
MAIN PROC 
    
    MOV AH,1
    INT 21H
    MOV BL,AL 
    
    MOV BH,1
    ADD BH,48
    
    SUB AL,48
    
    MOV CX,0
    MOV CL,AL  
    
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H
    
    L1:
    
    MOV AH,2
    MOV DL,BH
    INT 21H
    INC BH 
    LOOP L1   
    
    
    EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN