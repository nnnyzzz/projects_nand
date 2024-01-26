//push const 0
@0
D=A
//push
@SP
A=M
M=D
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
//ARG 0
@0
D=A
@ARG
A=M+D
D=M
//push
@SP
A=M
M=D
@SP
M=M+1
//LCL 0
@0
D=A
@LCL
A=M+D
D=M
//push
@SP
A=M
M=D
@SP
M=M+1
//  add
@SP
AM=M-1
D=M
@SP
AM=M-1
M=D+M
@SP
M=M+1//pop LCL 0
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
//ARG 0
@0
D=A
@ARG
A=M+D
D=M
//push
@SP
A=M
M=D
@SP
M=M+1
//push const 1
@1
D=A
//push
@SP
A=M
M=D
@SP
M=M+1
//  sub
@SP
AM=M-1
D=M
@SP
AM=M-1
M=M-D
@SP
M=M+1//pop ARG 0
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
//ARG 0
@0
D=A
@ARG
A=M+D
D=M
//push
@SP
A=M
M=D
@SP
M=M+1
//if-goto
@SP
AM=M-1
D=M
@LOOP_START
D;JNE
//LCL 0
@0
D=A
@LCL
A=M+D
D=M
//push
@SP
A=M
M=D
@SP
M=M+1
