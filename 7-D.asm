.MODEL SMALL
.STACK 100H
.DATA 
A DW ?
B DW ?
C DW ?
.CODE  

MAIN PROC 
    
    MOV AX,A
    IMUL AX
    
    MOV A,AX
    
    MOV AX,B
    IMUL AX
    
    MOV BX,AX
    
    ADD BX,A
    
    MOV AX,C
    IMUL AX
    
    CMP BX,AX
    JE SET_CF
    
    CLC
    
    JMP END_IF
    
    SET_CF:
            STC
    
    END_IF:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN