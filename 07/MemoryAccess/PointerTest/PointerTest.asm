//load constant 3030 to D
@3030
D=A
//push
@SP
A=M
M=D

@SP
M=M+1
//pop pointer THIS
@SP
AM=M-1
D=M
@THIS
M=D
//load constant 3040 to D
@3040
D=A
//push
@SP
A=M
M=D

@SP
M=M+1
//pop pointer THAT
@SP
AM=M-1
D=M
@THAT
M=D
//load constant 32 to D
@32
D=A
//push
@SP
A=M
M=D

@SP
M=M+1
//pop THIS 2
@2
D=A

@THIS
D=D+M

@temp
M=D

@SP
AM=M-1
D=M

@temp
A=M
M=D
//load constant 46 to D
@46
D=A
//push
@SP
A=M
M=D

@SP
M=M+1
//pop THAT 6
@6
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
//load pointer THIS to D
@THIS
D=M
//push
@SP
A=M
M=D

@SP
M=M+1
//load pointer THAT to D
@THAT
D=M
//push
@SP
A=M
M=D

@SP
M=M+1
//add
@SP
AM=M-1
D=M
A=A-1
M=M+D
//load THIS 2 to D
@2
D=A
@THIS
A=M+D
D=M
//push
@SP
A=M
M=D

@SP
M=M+1
//sub
@SP
AM=M-1
D=M

A=A-1
M=M-D
//load THAT 6 to D
@6
D=A
@THAT
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
A=A-1
M=M+D
