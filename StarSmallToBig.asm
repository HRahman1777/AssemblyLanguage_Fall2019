.MODEL SMALL
.STACK 100H
.CODE
MAIN PROC
    
    MOV BL, 1
    MOV BH, 0
    
    L1:
       MOV AH,2
       MOV DL,'*'
       INT 21H
       
       INC BH
        
       CMP BH,BL
       JE QU
       JL L1
       JMP EXIT
       
    QU:
       MOV AH,2
       MOV DL,0AH
       INT 21H
       MOV DL,0DH
       INT 21H
       
       INC BL
       
       CMP BL,5
       JG EXIT
       
       MOV BH,0
       
       JMP L1
       
    EXIT:
    
       
       