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

	@i	//makes variable i, location is assigned and memory address is stored in A register
	M=1	// i=1
	@R2	// loads address to register A. This is the address we will store sum
	M=0	// sum=0

(LOOP)	// creates a space in memory, the next address will be the next execution in the programme

	@i	// address of i loaded to A
	D=M	// D=i
	@R1	// address of number of times we need to multiply loaded to A
	D=D-M	// result of i- value of R1 stored in register D
	@END
	D;JGT	// if (i - value of R1) > 0 jump to end

	@R0
	D=M
	@R2
	M=M+D
	@i
	M=M+1
	@LOOP
	0;JMP

(END)
	@END
	0;JMP
