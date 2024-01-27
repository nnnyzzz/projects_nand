arithmetic_dict = {

    "add": """//add
@SP
AM=M-1
D=M
A=A-1
M=M+D
""",

    "sub": """//sub
@SP
AM=M-1
D=M

A=A-1
M=M-D
""",

    "neg": """//neg
@SP
A=M-1
M=-M""",

    "not": """//not
@SP
A=M-1
M=!M
""",

    "eq":
        """//eq
@SP
AM=M-1
D=M

A=A-1
D=M-D
@TRUE_number_x
D;JEQ

//else enter false
@SP
A=M-1
M=0
@CONTINUE_number_x
0;JMP

(TRUE_number_x)
//enter true
@SP
A=M-1
M=-1

(CONTINUE_number_x)
""",

    "gt":
        """//gt
@SP
AM = M-1
D = M
@Yltz.number_x
D;JLT            
@SP       
A = M-1
D = M
@false.number_x 
D;JLT          
(sub.number_x)  
@SP
A = M
D = D-M
@true.number_x
D;JGT
@false.number_x
0;JMP
(Yltz.number_x)
@SP
A = M-1
D = M
@true.number_x
D;JGE
@sub.number_x
0;JMP

(true.number_x)
@SP
A = M-1
M = -1
@end.number_x
0;JMP

(false.number_x)
@SP
A = M-1
M = 0

(end.number_x)
""",

    "lt": """//lt
@SP
AM = M-1
D = M
@Yltz.number_x
D;JLT            
@SP       
A = M-1
D = M
@true.number_x 
D;JLT          
(sub.number_x)  
@SP
A = M
D = D-M
@false.number_x
D;JGE
@true.number_x
0;JMP
(Yltz.number_x)
@SP
A = M-1
D = M
@false.number_x
D;JGE
@sub.number_x
0;JMP

(true.number_x)
@SP
A = M-1
M = -1
@end.number_x
0;JMP

(false.number_x)
@SP
A = M-1
M = 0

(end.number_x)""",

    "and": """//and
@SP
AM = M-1
D = M

@SP
A = M-1
M = D&M
""",

    "or": """//or
@SP
AM = M-1
D = M
    
@SP
A = M-1
M = D|M
"""
}

memory_access_dict = {
    ### PUSH ###
    "push": """//push to SP
@SP
A=M
M=D

//inc SP
@SP
M=M+1
"""
    ,
    "segment_i": """//load segment i to D
@i
D=A
@segment
A=M+D
D=M
"""
    ,
    "const_i": """//load constant i to D
@i
D=A
"""
    ,
    "load_static": """//load static file_name.i to D
@file_name.i
D=M
    """
    ,
    "push_temp": """//load temp_index to D
@R_index
D=M 
"""
    ,
    "load_pointer": """//load pointer segment to D
@segment
D=M
"""
    ,
    "load_segment": """//load segment to D
@segment
D=M
"""
    ,

    "load_new_label": lambda label: """ //load """ + label
                                    + """
@""" + label + """
D=A


    """

    ### POP ###
    ,
    "pop_segment_i": """//pop segment i
@i
D=A

@segment
D=D+M

@temp
M=D

@SP
AM=M-1
D=M

@temp
A=M
M=D
"""
    ,
    "pop_static": """//pop static
@SP
AM=M-1
D=M
    
@file_name.i
M=D
"""
    ,
    "pop_temp": """//pop temp
@SP
AM=M-1
D=M

@R_index
M=D
"""
    ,
    "pop_pointer": """//pop pointer segment
@SP
AM=M-1
D=M
@segment
M=D
"""
    ,
    "pop_arg": """//pop arg
@SP
A = M-1
D = M

@ARG
A = M
M = D

@SP
M = M-1
"""
}

branching_dict = {
    "label": """//label
(label)
"""

    ,
    "goto": """//goto
@file_name$label
0;JMP
"""
    ,
    "if": """//if-goto
@SP
AM=M-1
D=M
@label
D;JNE
"""
}

reposition_dict = {
    "reposition_source_dest_with_inc": lambda source, inc, dest: """//regular reposition 
@""" + source + """
D=M
@""" + inc + """
D = D + A
@""" + dest + """
M=D"""
    ,
    "reposition_address": lambda source, decrease, dest: """//reposition address
@""" + source + """
D=M
@""" + decrease + """
A = D - A
D = M
    
@""" + dest + """
M=D
"""
    ,
    "init_SP": """//init SP
@256
D=A
@SP
M=D
"""
    ,

    "return_address": """//return address
@return_address
A=M
0;JMP"""

}

if __name__ == '__main__':
    pass
