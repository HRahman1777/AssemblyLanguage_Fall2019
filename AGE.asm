.MODEL SMALL
.STACK 100H
.DATA
M1 DB 'ENTER YOUT AGE $'
M2 DB 'YOUT AGE IS $'
.CODE
MAIN PROC
    
    MOV AX,@DATA
    MOV DS,AX
    
    LEA DX,M1
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
    
    LEA DX,M2
    MOV AH,9
    INT 21H
    
    MOV AH,2
    
    MOV DL,BL
    INT 21H
    
    MOV DL,BH
    INT 21H
    
    
    EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN