.MODEL SMALL
.STACK 100H
.DATA
M1 DB "TOTAL 1 HAVE: $"
.CODE   
PROC1 PROC
    MOV BL,'0'
    START:
        CMP AX,0
        JZ END1
        TEST AX,1
        JZ BELOW
        INC BL
    BELOW:
        SHR AX,1
        JMP START
    RET 
PROC1 ENDP


MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    MOV AH,9
    LEA DX,M1
    INT 21H
       
    MOV AX,01010101B
    CALL PROC1
    END1: 
    MOV AH,2
    MOV DL,BL
    INT 21H
    END:
        MOV AH,4CH
        INT 21H
    MAIN ENDP
END MAIN