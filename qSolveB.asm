ORG 100h 

MAIN PROC
    L1:
      MOV AX, 6h
      CMP AX, 0
      JGE L2
      JMP EOF
    L2:
      MOV AX, 3h
    Print:
         JMP L1
    EOF:
END