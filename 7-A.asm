.MODEL SMALL
.STACK 100H
.DATA
A DW ?
.CODE
MAIN PROC
    
    MOV AX,5
    IMUL A
    
    SUB AX,7
    
    MOV A,AX   
       
    EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN