//load ARG 1 to D
@1
D=A
@ARG
A=M+D
D=M
//push to SP
@SP
A=M
M=D

//inc SP
@SP
M=M+1
//pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
//load constant 0 to D
@0
D=A
//push to SP
@SP
A=M
M=D

//inc SP
@SP
M=M+1
//pop THAT 0
@0
D=A

@THAT
D=D+M

@temp
M=D

@SP
AM=M-1
D=M

@temp
A=M
M=D
//load constant 1 to D
@1
D=A
//push to SP
@SP
A=M
M=D

//inc SP
@SP
M=M+1
//pop THAT 1
@1
D=A

@THAT
D=D+M

@temp
M=D

@SP
AM=M-1
D=M

@temp
A=M
M=D
//load ARG 0 to D
@0
D=A
@ARG
A=M+D
D=M
//push to SP
@SP
A=M
M=D

//inc SP
@SP
M=M+1
//load constant 2 to D
@2
D=A
//push to SP
@SP
A=M
M=D

//inc SP
@SP
M=M+1
//sub
@SP
AM=M-1
D=M

A=A-1
M=M-D
//pop ARG 0
@0
D=A

@ARG
D=D+M

@temp
M=D

@SP
AM=M-1
D=M

@temp
A=M
M=D
//main$MAIN_LOOP_START
(main$MAIN_LOOP_START)
//load ARG 0 to D
@0
D=A
@ARG
A=M+D
D=M
//push to SP
@SP
A=M
M=D

//inc SP
@SP
M=M+1
//if-goto
@SP
AM=M-1
D=M
@main$COMPUTE_ELEMENT
D;JNE
//goto
@FibonacciSeries$main$END_PROGRAM
0;JMP
//main$COMPUTE_ELEMENT
(main$COMPUTE_ELEMENT)
//load THAT 0 to D
@0
D=A
@THAT
A=M+D
D=M
//push to SP
@SP
A=M
M=D

//inc SP
@SP
M=M+1
//load THAT 1 to D
@1
D=A
@THAT
A=M+D
D=M
//push to SP
@SP
A=M
M=D

//inc SP
@SP
M=M+1
//add
@SP
AM=M-1
D=M
A=A-1
M=M+D
//pop THAT 2
@2
D=A

@THAT
D=D+M

@temp
M=D

@SP
AM=M-1
D=M

@temp
A=M
M=D
//load pointer THAT to D
@THAT
D=M
//push to SP
@SP
A=M
M=D

//inc SP
@SP
M=M+1
//load constant 1 to D
@1
D=A
//push to SP
@SP
A=M
M=D

//inc SP
@SP
M=M+1
//add
@SP
AM=M-1
D=M
A=A-1
M=M+D
//pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
//load ARG 0 to D
@0
D=A
@ARG
A=M+D
D=M
//push to SP
@SP
A=M
M=D

//inc SP
@SP
M=M+1
//load constant 1 to D
@1
D=A
//push to SP
@SP
A=M
M=D

//inc SP
@SP
M=M+1
//sub
@SP
AM=M-1
D=M

A=A-1
M=M-D
//pop ARG 0
@0
D=A

@ARG
D=D+M

@temp
M=D

@SP
AM=M-1
D=M

@temp
A=M
M=D
//goto
@FibonacciSeries$main$MAIN_LOOP_START
0;JMP
//main$END_PROGRAM
(main$END_PROGRAM)
