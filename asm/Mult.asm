// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
// Put your code here.
// (_START)
        @i              // i refers to some mem. location
        M=0             // i = 0
        @R2             // RAM location 2
        M=0             // R2 = 0, out

(LOOP)
        @i
        D=M             // D = i

        @R0             // RAM location 0
        D=D-M           // i = i - MEM[R0] -> RAM[0]

        @END
        D;JEQ           // if (i - R0) == 0 goto END

        @R1             // RAM location 1
        D=M             // D = MEM[R1] -> RAM[1]

        @R2
        M=M+D           // R2 = R2 + R1

        @i
        M=M+1           // i = i + 1

        @LOOP
        0;JMP           // GOTO LOOP

(END)
        @END
        0;JMP           // GOTO END, infinite loop

