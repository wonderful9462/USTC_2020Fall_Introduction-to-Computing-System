.ORIG x3000
LD R0 FIRST
ADD R1 R0 #0
LDR R2 R1 #1
LOOP ADD R3 R1 #0
AGAIN LDR R3 R3 #0
LDR R4 R3 #1
NOT R6 R4
ADD R6 R6 #1
ADD R5 R2 R6
BRnz GOON
STR R4 R1 #1
STR R2 R3 #1
LDR R2 R1 #1
LDR R4 R3 #1
GOON LDR R6 R3 #0
BRnp AGAIN
LDR R1 R1 #0
LDR R2 R1 #1
LDR R6 R1 #0
BRz STOP
BRnzp LOOP
FIRST .FILL x3100
STOP halt
.END