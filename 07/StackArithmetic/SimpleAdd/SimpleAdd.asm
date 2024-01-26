//load constant 7 to D
@7
D=A
//push to SP
@SP
A=M
M=D

//inc SP
@SP
M=M+1
//load constant 8 to D
@8
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
