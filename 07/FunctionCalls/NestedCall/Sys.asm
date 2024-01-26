(Sys.init)
//load constant 4000 to D
@4000
D=A
//push to SP
@SP
A=M
M=D

//inc SP
@SP
M=M+1
//pop pointer THIS
@SP
AM=M-1
D=M
@THIS
M=D
//load constant 5000 to D
@5000
D=A
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
 //load Sys.Sys.main$ret.0
@Sys.Sys.main$ret.0
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
@-5
D = D + A
@ARG
M=D//regular reposition 
@SP
D=M
@0
D = D + A
@LCL
M=D//goto
@Sys$Sys.main
0;JMP
//Sys.Sys.main$ret.0
(Sys.Sys.main$ret.0)
//pop temp
@SP
AM=M-1
D=M

@R6
M=D
//LOOP
(LOOP)
//goto
@Sys$LOOP
0;JMP
(Sys.main)
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
//load constant 4001 to D
@4001
D=A
//push to SP
@SP
A=M
M=D

//inc SP
@SP
M=M+1
//pop pointer THIS
@SP
AM=M-1
D=M
@THIS
M=D
//load constant 5001 to D
@5001
D=A
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
//load constant 200 to D
@200
D=A
//push to SP
@SP
A=M
M=D

//inc SP
@SP
M=M+1
//pop LCL 1
@1
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
//load constant 40 to D
@40
D=A
//push to SP
@SP
A=M
M=D

//inc SP
@SP
M=M+1
//pop LCL 2
@2
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
//load constant 6 to D
@6
D=A
//push to SP
@SP
A=M
M=D

//inc SP
@SP
M=M+1
//pop LCL 3
@3
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
//load constant 123 to D
@123
D=A
//push to SP
@SP
A=M
M=D

//inc SP
@SP
M=M+1
 //load Sys.Sys.add12$ret.0
@Sys.Sys.add12$ret.0
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
@Sys$Sys.add12
0;JMP
//Sys.Sys.add12$ret.0
(Sys.Sys.add12$ret.0)
//pop temp
@SP
AM=M-1
D=M

@R5
M=D
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
//load LCL 2 to D
@2
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
//load LCL 3 to D
@3
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
//load LCL 4 to D
@4
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
//add
@SP
AM=M-1
D=M
A=A-1
M=M+D
//add
@SP
AM=M-1
D=M
A=A-1
M=M+D
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
0;JMP(Sys.add12)
//load constant 4002 to D
@4002
D=A
//push to SP
@SP
A=M
M=D

//inc SP
@SP
M=M+1
//pop pointer THIS
@SP
AM=M-1
D=M
@THIS
M=D
//load constant 5002 to D
@5002
D=A
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
//load constant 12 to D
@12
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