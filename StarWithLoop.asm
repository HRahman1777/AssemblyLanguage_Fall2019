.MODEL SMALL
.STACK 100H
.CODE
MAIN PROC
    
    MOV CX,8
    
    MOV AH,1 
    INT 21H
    MOV BH,AL
    
    SUB BH,48
    
    MOV BL,BH
    
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H
    
    L1:
       MOV AH,2
       MOV DL,'*'
       INT 21H
       
       DEC BH
        
       CMP BH,0
       JE QU
       JG L1
       
    QU:
       MOV AH,2
       MOV DL,0AH
       INT 21H
       MOV DL,0DH
       INT 21H
       
       MOV BH,BL
       LOOP L1
       
       