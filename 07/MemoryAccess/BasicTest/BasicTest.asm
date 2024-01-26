//load constant 10 to D
@10
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
//load constant 21 to D
@21
D=A
//push
@SP
A=M
M=D

@SP
M=M+1
//load constant 22 to D
@22
D=A
//push
@SP
A=M
M=D

@SP
M=M+1
//pop ARG 2
@2
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
//pop ARG 1
@1
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
//load constant 36 to D
@36
D=A
//push
@SP
A=M
M=D

@SP
M=M+1
//pop THIS 6
@6
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
//load constant 42 to D
@42
D=A
//push
@SP
A=M
M=D

@SP
M=M+1
//load constant 45 to D
@45
D=A
//push
@SP
A=M
M=D

@SP
M=M+1
//pop THAT 5
@5
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
//load constant 510 to D
@510
D=A
//push
@SP
A=M
M=D

@SP
M=M+1
//pop temp
@SP
AM=M-1
D=M

@R11
M=D
//load LCL 0 to D
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
//load THAT 5 to D
@5
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
//load ARG 1 to D
@1
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
//  sub
@SP
AM=M-1
D=M

A=A-1
M=M-D
//load THIS 6 to D
@6
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
//load THIS 6 to D
@6
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
//  add
@SP
AM=M-1
D=M
A=A-1
M=M+D
//  sub
@SP
AM=M-1
D=M

A=A-1
M=M-D
//load temp11 to D
@R11
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
