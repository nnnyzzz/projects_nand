(SimpleFunction.test)
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
//load LCL 1 to D
@1
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
//not
@SP
A=M-1
M=!M
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
//add
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
//regular reposition 
@LCL
D=M
@0
D = D + A
@frame
M=D//reposition address
@frame
D=M
@5
A = D - A
D = M
    
@return_address
M=D
//pop arg
@SP
A = M-1
D = M

@ARG
A = M
M = D

@SP
M = M-1
//regular reposition 
@ARG
D=M
@1
D = D + A
@SP
M=D//reposition address
@frame
D=M
@1
A = D - A
D = M
    
@THAT
M=D
//reposition address
@frame
D=M
@2
A = D - A
D = M
    
@THIS
M=D
//reposition address
@frame
D=M
@3
A = D - A
D = M
    
@ARG
M=D
//reposition address
@frame
D=M
@4
A = D - A
D = M
    
@LCL
M=D
//return address
@return_address
A=M
0;JMP