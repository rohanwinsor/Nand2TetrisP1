// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
//
// This program only needs to handle arguments that satisfy
// R0 >= 0, R1 >= 0, and R0*R1 < 32768.

// Put your code here.

@R0 // GETS value from R[0] and Stores in D register
D=M

@R2 // Stores value in D register in R[2]
M=D

@R1
D=M // GETS value from R[1] and Stores in D register

@Ri // Stores value in D register in i
M=D-1
M=M-1


(LOOP)
    @R0 // GETS value from R[0] and Stores in D register
    D=M

    @R2 // Stores value in D register and adds it to R[2]
    M=M+D

    @Ri
    D=M
    M=M-1

    @END
    D;JEQ

    @LOOP
    0;JMP

(END)
    @END
    0;JMP