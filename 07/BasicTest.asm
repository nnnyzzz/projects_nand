//push const 10
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
//push const 21
@21
D=A
//push
@SP
A=M
M=D
@SP
M=M+1
//push const 22
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
//push const 36
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
//push const 42
@42
D=A
//push
@SP
A=M
M=D
@SP
M=M+1
//push const 45
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
//push const 510
@510
D=A
//push
@SP
A=M
M=D
@SP
M=M+1
//pop TEMP 6
@6
D=A

@TEMP
D=D+M

@temp
M=D

@SP
AM=M-1
D=M

@temp
A=M
M=D
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
//THAT 5
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
@SP
AM=M-1
M=D+M
@SP
M=M+1//ARG 1
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
@SP
AM=M-1
M=M-D
@SP
M=M+1//THIS 6
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
//THIS 6
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
@SP
AM=M-1
M=D+M
@SP
M=M+1//  sub
@SP
AM=M-1
D=M
@SP
AM=M-1
M=M-D
@SP
M=M+1//TEMP 6
@6
D=A
@TEMP
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
M=M+1