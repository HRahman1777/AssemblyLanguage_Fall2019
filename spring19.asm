ORG 100h 

MAIN PROC
    MOV AL,1
    MOV BL,3 
    
    CALL M2
    CALL M2
    CALL M2
    CALL M2
    
    RET
    MAIN ENDP  


M2 PROC
    
    MUL BL
    
    RET
    M2 ENDP
END