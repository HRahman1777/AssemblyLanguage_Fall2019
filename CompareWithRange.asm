                       .MODEL SMALL
.STACK 100H
.DATA
M1 DB 'NOT OK $'
M2 DB 'SMALL $'
M3 DB 'OK $'
.CODE
MAIN PROC
    
    MOV AX,@DATA
    MOV DS,AX
    
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    SUB BL, 48
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    
    
    CMP BL,3
    JGE L1
    
    LEA DX, M1
    MOV AH,9
    INT 21H
    JMP EXIT  
     
    L1:
       CMP BL, 6
       JLE P1
       
    LEA DX, M1
    MOV AH,9
    INT 21H
    JMP EXIT
    
    P1:
       LEA DX, M3 
       MOV AH,9
       INT 21H   
       
       
    EXIT: 
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN