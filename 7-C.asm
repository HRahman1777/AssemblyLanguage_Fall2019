.MODEL SMALL
.STACK 100H
.DATA 
A DW ?
.CODE  

MAIN PROC 
    
    MOV AX,9
    
    IMUL A
    
    MOV BX,6
    
    SUB BX,AX
    
    MOV A, BX  
       
    EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN