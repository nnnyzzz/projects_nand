//load constant 17 to D
@17
D=A
//push to SP
@SP
A=M
M=D

//inc SP
@SP
M=M+1
//load constant 17 to D
@17
D=A
//push to SP
@SP
A=M
M=D

//inc SP
@SP
M=M+1
//eq
@SP
AM=M-1
D=M

A=A-1
D=M-D
@TRUE_0
D;JEQ

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
//load constant 17 to D
@17
D=A
//push to SP
@SP
A=M
M=D

//inc SP
@SP
M=M+1
//load constant 16 to D
@16
D=A
//push to SP
@SP
A=M
M=D

//inc SP
@SP
M=M+1
//eq
@SP
AM=M-1
D=M

A=A-1
D=M-D
@TRUE_1
D;JEQ

//else enter false
@SP
A=M-1
M=0
@CONTINUE_1
0;JMP

(TRUE_1)
//enter true
@SP
A=M-1
M=-1

(CONTINUE_1)
//load constant 16 to D
@16
D=A
//push to SP
@SP
A=M
M=D

//inc SP
@SP
M=M+1
//load constant 17 to D
@17
D=A
//push to SP
@SP
A=M
M=D

//inc SP
@SP
M=M+1
//eq
@SP
AM=M-1
D=M

A=A-1
D=M-D
@TRUE_2
D;JEQ

//else enter false
@SP
A=M-1
M=0
@CONTINUE_2
0;JMP

(TRUE_2)
//enter true
@SP
A=M-1
M=-1

(CONTINUE_2)
//load constant 892 to D
@892
D=A
//push to SP
@SP
A=M
M=D

//inc SP
@SP
M=M+1
//load constant 891 to D
@891
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
@TRUE_3
D;JLT

//else enter false
@SP
A=M-1
M=0
@CONTINUE_3
0;JMP

(TRUE_3)
//enter true
@SP
A=M-1
M=-1

(CONTINUE_3)
//load constant 891 to D
@891
D=A
//push to SP
@SP
A=M
M=D

//inc SP
@SP
M=M+1
//load constant 892 to D
@892
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
@TRUE_4
D;JLT

//else enter false
@SP
A=M-1
M=0
@CONTINUE_4
0;JMP

(TRUE_4)
//enter true
@SP
A=M-1
M=-1

(CONTINUE_4)
//load constant 891 to D
@891
D=A
//push to SP
@SP
A=M
M=D

//inc SP
@SP
M=M+1
//load constant 891 to D
@891
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
@TRUE_5
D;JLT

//else enter false
@SP
A=M-1
M=0
@CONTINUE_5
0;JMP

(TRUE_5)
//enter true
@SP
A=M-1
M=-1

(CONTINUE_5)
//load constant 32767 to D
@32767
D=A
//push to SP
@SP
A=M
M=D

//inc SP
@SP
M=M+1
//load constant 32766 to D
@32766
D=A
//push to SP
@SP
A=M
M=D

//inc SP
@SP
M=M+1
//gt
@SP
AM=M-1
D=M

A=A-1
D=M-D
@TRUE_6
D;JGT

//else enter false
@SP
A=M-1
M=0
@CONTINUE_6
0;JMP

(TRUE_6)
//enter true
@SP
A=M-1
M=-1

(CONTINUE_6)
//load constant 32766 to D
@32766
D=A
//push to SP
@SP
A=M
M=D

//inc SP
@SP
M=M+1
//load constant 32767 to D
@32767
D=A
//push to SP
@SP
A=M
M=D

//inc SP
@SP
M=M+1
//gt
@SP
AM=M-1
D=M

A=A-1
D=M-D
@TRUE_7
D;JGT

//else enter false
@SP
A=M-1
M=0
@CONTINUE_7
0;JMP

(TRUE_7)
//enter true
@SP
A=M-1
M=-1

(CONTINUE_7)
//load constant 32766 to D
@32766
D=A
//push to SP
@SP
A=M
M=D

//inc SP
@SP
M=M+1
//load constant 32766 to D
@32766
D=A
//push to SP
@SP
A=M
M=D

//inc SP
@SP
M=M+1
//gt
@SP
AM=M-1
D=M

A=A-1
D=M-D
@TRUE_8
D;JGT

//else enter false
@SP
A=M-1
M=0
@CONTINUE_8
0;JMP

(TRUE_8)
//enter true
@SP
A=M-1
M=-1

(CONTINUE_8)
//load constant 57 to D
@57
D=A
//push to SP
@SP
A=M
M=D

//inc SP
@SP
M=M+1
//load constant 31 to D
@31
D=A
//push to SP
@SP
A=M
M=D

//inc SP
@SP
M=M+1
//load constant 53 to D
@53
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
//load constant 112 to D
@112
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
//neg
@SP
A=M-1
M=-M//and
@SP
AM = M-1
D = M

@SP
A = M-1
M = D&M
//load constant 82 to D
@82
D=A
//push to SP
@SP
A=M
M=D

//inc SP
@SP
M=M+1
//or
@SP
AM = M-1
D = M
    
@SP
A = M-1
M = D|M
//not
@SP
A=M-1
M=!M
