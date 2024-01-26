(Main.fibonacci)
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
//lt
@SP
AM=M-1
D=M

A=A-1
D=M-D
@TRUE_0
D;JLT

//else enter false
@SP
A=M-1
M=0
@CONTINUE_0
0;JMP

(TRUE_0)
//enter true
@SP
A=M-1
M=-1

(CONTINUE_0)
//if-goto
@SP
AM=M-1
D=M
@IF_TRUE
D;JNE
//goto
@Main$IF_FALSE
0;JMP
//IF_TRUE
(IF_TRUE)
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
0;JMP//IF_FALSE
(IF_FALSE)
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
 //load Main.Main.fibonacci$ret.0
@Main.Main.fibonacci$ret.0
D=A


    //push to SP
@SP
A=M
M=D

//inc SP
@SP
M=M+1
//load LCL to D
@LCL
D=M
//push to SP
@SP
A=M
M=D

//inc SP
@SP
M=M+1
//load ARG to D
@ARG
D=M
//push to SP
@SP
A=M
M=D

//inc SP
@SP
M=M+1
//load THIS to D
@THIS
D=M
//push to SP
@SP
A=M
M=D

//inc SP
@SP
M=M+1
//load THAT to D
@THAT
D=M
//push to SP
@SP
A=M
M=D

//inc SP
@SP
M=M+1
//regular reposition 
@SP
D=M
@-6
D = D + A
@ARG
M=D//regular reposition 
@SP
D=M
@0
D = D + A
@LCL
M=D//goto
@Main$Main.fibonacci
0;JMP
//Main.Main.fibonacci$ret.0
(Main.Main.fibonacci$ret.0)
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
 //load Main.Main.fibonacci$ret.1
@Main.Main.fibonacci$ret.1
D=A


    //push to SP
@SP
A=M
M=D

//inc SP
@SP
M=M+1
//load LCL to D
@LCL
D=M
//push to SP
@SP
A=M
M=D

//inc SP
@SP
M=M+1
//load ARG to D
@ARG
D=M
//push to SP
@SP
A=M
M=D

//inc SP
@SP
M=M+1
//load THIS to D
@THIS
D=M
//push to SP
@SP
A=M
M=D

//inc SP
@SP
M=M+1
//load THAT to D
@THAT
D=M
//push to SP
@SP
A=M
M=D

//inc SP
@SP
M=M+1
//regular reposition 
@SP
D=M
@-6
D = D + A
@ARG
M=D//regular reposition 
@SP
D=M
@0
D = D + A
@LCL
M=D//goto
@Main$Main.fibonacci
0;JMP
//Main.Main.fibonacci$ret.1
(Main.Main.fibonacci$ret.1)
//add
@SP
AM=M-1
D=M
A=A-1
M=M+D
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
0;JMP(Sys.init)
//load constant 4 to D
@4
D=A
//push to SP
@SP
A=M
M=D

//inc SP
@SP
M=M+1
 //load Sys.Main.fibonacci$ret.0
@Sys.Main.fibonacci$ret.0
D=A


    //push to SP
@SP
A=M
M=D

//inc SP
@SP
M=M+1
//load LCL to D
@LCL
D=M
//push to SP
@SP
A=M
M=D

//inc SP
@SP
M=M+1
//load ARG to D
@ARG
D=M
//push to SP
@SP
A=M
M=D

//inc SP
@SP
M=M+1
//load THIS to D
@THIS
D=M
//push to SP
@SP
A=M
M=D

//inc SP
@SP
M=M+1
//load THAT to D
@THAT
D=M
//push to SP
@SP
A=M
M=D

//inc SP
@SP
M=M+1
//regular reposition 
@SP
D=M
@-6
D = D + A
@ARG
M=D//regular reposition 
@SP
D=M
@0
D = D + A
@LCL
M=D//goto
@Sys$Main.fibonacci
0;JMP
//Sys.Main.fibonacci$ret.0
(Sys.Main.fibonacci$ret.0)
//WHILE
(WHILE)
//goto
@Sys$WHILE
0;JMP
