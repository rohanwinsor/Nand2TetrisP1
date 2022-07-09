// fibonacci
// Set RAM[0] -> 0 RAM[1] -> 1
// While
    // Store RAM[1] -> RAM[2]
    // Set RAM[1] -> RAM[1] + RAM[0]
    // Set RAM[2] -> RAM[1]
    // Loop

// OP-1
// Get Value from Ram[1] and Store it in RAM[2]
// Get Value from Ram[1] and Store it in D register
@1
D=M
// Get Value from D register and Store it in RAM[2]
@2
M=D
// OP-1 Done

// OP-2
// Get Value from Ram[0] and Add it to RAM[1]
// Get Value from Ram[1] and Store it in D register
@0
D=M
// Get Value from D register and Add it in RAM[1]
@1
M=M+D
// OP-2 Done

// OP-3
// Get Value from Ram[2] and Store it to RAM[0]
// Get Value from Ram[2] and Store it in D register
@2
D=M
// Get Value from D register and Add it in RAM[0]
@0
M=D
// OP-3 Done

// OP-4 Loop it
0; JMP
// OP-4 Done
