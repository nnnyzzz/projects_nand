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
//pop LCL 0
@0
D=A

@LCL
D=D+M

@temp
M=D

@SP
AM=M-1
D=M

@temp
A=M
M=D
//LOOP_START
(LOOP_START)
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
//load LCL 0 to D
@0
D=A
@LCL
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
//pop LCL 0
@0
D=A

@LCL
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
@LOOP_START
D;JNE
//load LCL 0 to D
@0
D=A
@LCL
A=M+D
D=M
//push to SP
@SP
A=M
M=D

//inc SP
@SP
M=M+1
