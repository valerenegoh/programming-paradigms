; 2 registers - A(ddress, R/M(emory)) and D(ata)
; MD=A+1 - multiple assignments (store in both M and D)
; D;JGT - jump if D>0
; D;JLT - jump if D<0
; D;JGE - jump if D>=0
; D;JLE - jump if D<=0

; R0 - change
; R1-R4 - denominations
; R5-R8 - corresponding #coins for each denom

; load change (constant int 67 stored in A) into R0
@67
D=A
@R0
M=D

; load denoms [25,10,5,1] into R1,R2,R3,R4
@25
D=A
@R1
M=D

@10
D=A
@R2
M=D

@5
D=A
@R3
M=D

@1
D=A
@R4
M=D

; If (denom@R1234 - change@R0) < 0, jump to next denom
; Else, update change@R0, increment #coins@R5678, jump to same denom 
(QUARTERS)
@R0
D=M
@R1
D=D-M
@DIMES
D;JLT
@R0
M=D
@R5
M=M+1
@QUARTERS
0;JMP

(DIMES)
@R0
D=M
@R2
D=D-M
@NICKELS
D;JLT
@R0
M=D
@R6
M=M+1
@DIMES
0;JMP

(NICKELS)
@R0
D=M
@R3
D=D-M
@PENNIES
D;JLT
@R0
M=D
@R7
M=M+1
@NICKELS
0;JMP

(PENNIES)
@R0
D=M
@R4
D=D-M
@END
D;JLT
@R0
M=D
@R8
M=M+1
@PENNIES
0;JMP

(END)
@END
0;JMP