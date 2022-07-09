// Simple if statement
// if R0 >0
//  R1=1
//else
//  R1=0

@R0
D=M
@POSITIVE
D;JGT // Jump to 8th instruction if true
@R1
M=0
@10
0;JMP // Terminate
(POSITIVE)  // Declare label
@R1
M=1
(END)
@END
0;JMP // Terminate