.MODEL SMALL
.STACK 100H
.CODE

MAIN PROC
    
    MOV AX,01100101B
    
    MOV BL,'0'
    
    L1:
       CMP AX,0
       JZ END1
       
       TEST AX,1
       JZ L2
       
       INC BL
    
    L2:
       SHR AX,1
       JMP L1
    
    
    
    END1:
         MOV AH,2
         MOV DL,BL
         INT 21H
    
    END:     