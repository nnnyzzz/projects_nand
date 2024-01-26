//load constant 111 to D
@111
D=A
//push
@SP
A=M
M=D

@SP
M=M+1
//load constant 333 to D
@333
D=A
//push
@SP
A=M
M=D

@SP
M=M+1
//load constant 888 to D
@888
D=A
//push
@SP
A=M
M=D

@SP
M=M+1
//pop stat8c
@SP
AM=M-1
D=M
    
@Stat8cTest.8
M=D
//pop stat3c
@SP
AM=M-1
D=M
    
@Stat3cTest.3
M=D
//pop stat1c
@SP
AM=M-1
D=M
    
@Stat1cTest.1
M=D
//load stat3c Stat3cTest.3 to D
@Stat3cTest.3
D=M
    //push
@SP
A=M
M=D

@SP
M=M+1
//load stat1c Stat1cTest.1 to D
@Stat1cTest.1
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
//load stat8c Stat8cTest.8 to D
@Stat8cTest.8
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
