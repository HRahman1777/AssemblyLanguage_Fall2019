.MODEL SMALL
.STACK 100H
.DATA
S1 DB 'VOWEL $'
S2 DB 'NOT A VOWEL $'
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    
    
    CMP BL,'A'
    JE NEXT
    JMP L1
      
    CMP BL,'E'
    JE NEXT
    JMP L1
    
  
    CMP BL,'I'
    JE NEXT
    JMP L1
    
  
    CMP BL,'O'
    JE NEXT
    JMP L1
    
  
    CMP BL,'U'
    JE NEXT
    JMP L1
    
    NEXT:
    LEA DX,S1
    MOV AH,9
    INT 21H
    
    JMP EXIT
   
    L1:
    LEA DX,S2
    MOV AH,9
    INT 21H

    

    EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN