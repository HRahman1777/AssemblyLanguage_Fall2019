.MODEL SMALL
.STACK 100H 
.DATA
S1 DB 'ENTER YOUR AGE $' 

S2 DB 'MY AGE IS $'
.CODE
MAIN PROC 
    MOV AX,@DATA
    MOV DS,AX
    
    LEA DX,S1
    MOV AH,9
    INT 21H
    
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    
    INT 21H
    MOV BH,AL 
    
    
    
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H 
    
    
    LEA DX,S2
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,BL
    INT 21H
    
    MOV DL,BH
    INT 21H 
    
   
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN