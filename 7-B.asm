.MODEL SMALL
.STACK 100H
.DATA 
A DW ?
B DW ?
.CODE  

MAIN PROC 
    
    MOV AX,A

    SUB AX,B

    ADD B,10
    IMUL B

    MOV B,AX   
       
    EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN