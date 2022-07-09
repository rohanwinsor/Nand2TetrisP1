// Add value from Ram[0] and Ram[1] and save in Ram[1]

@0 // Select RAM[0] by storing address in A register and value in M register
D=M // Store Value in RAM[0] in D register

@1 // Select RAM[1]
D=D+M // Store Value in (D register + RAM[1]) in D register

@1 // Select RAM[1]
M=D // Store Value in D register in RAM[1]

@0 // Select RAM[0]
M=D // Store Value in D register in RAM[0]

// END
0; JMP 