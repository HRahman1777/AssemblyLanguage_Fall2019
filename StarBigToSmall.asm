.MODEL SMALL
.STACK 100H
.CODE
MAIN PROC
    
    MOV BH,5
    
    MOV BL,BH
    
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
       
       DEC BL
       
       CMP BL,0
       JE EXIT
       
       MOV BH,BL
       JMP L1
       
    EXIT:
    
       
       