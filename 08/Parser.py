"""
This file is part of nand2tetris, as taught in The Hebrew University, and
was written by Aviv Yaish. It is an extension to the specifications given
[here](https://www.nand2tetris.org) (Shimon Schocken and Noam Nisan, 2017),
as allowed by the Creative Common Attribution-NonCommercial-ShareAlike 3.0
Unported [License](https://creativecommons.org/licenses/by-nc-sa/3.0/).
"""
import typing

from CodeWriter import CodeWriter


class Parser:
    """
    # Parser
    
    Handles the parsing of a single .vm file, and encapsulates access to the
    input code. It reads VM commands, parses them, and provides convenient 
    access to their components. 
    In addition, it removes all white space and comments.

    ## VM Language Specification

    A .vm file is a stream of characters. If the file represents a
    valid program, it can be translated into a stream of valid assembly
    commands. VM commands may be separated by an arbitrary number of whitespace
    characters and comments, which are ignored. Comments begin with "//" and
    The different parts of each VM command may also be separated by an arbitrary
    number of non-newline whitespace characters.

    - Arithmetic commands:
      - add, sub, and, or, eq, gt, lt
      - neg, not, shiftleft, shiftright
    - Memory segment manipulation:
      - push <segment> <number>
      - pop <segment that is not constant> <number>
      - <segment> can be any of: argument, local, static, constant, this, that, 
                                 pointer, temp
    - Branching (only relevant for project 8):
      - label <label-name>
      - if-goto <label-name>
      - goto <label-name>
      - <label-name> can be any combination of non-whitespace characters.
    - Functions (only relevant for project 8):
      - call <function-name> <n-args>
      - function <function-name> <n-vars>
      - return
    """

    def __init__(self, input_file) -> None:
        """Gets ready to parse the input file.

        Args:
            input_file (typing.TextIO): input file.
        """
        # Your code goes here!
        # A good place to start is to read all the lines of the input:
        # input_lines = input_file.read().splitlines()
        lines = (line.strip() for line in input_file)
        lines = list(line for line in lines if line)  # Non-blank lines in a list
        lines = filter(lambda line: line[0:2] != '//', lines)  # Remove comments
        lines = [line.split('//')[0] for line in lines]  # Remove comments
        lines.append("EOF")
        input_file.close()

        self.vm = lines
        self.cur_line_index = 0
        self.cur_command_type = None
        self.cur_instruction = None
        self.set_file()

        self.curr_function = "main"

    def not_instruction(self, line):
        """check if the line is not an instruction"""
        return line[0:2] == '//' or not line

    def set_file(self):
        """set the file to the first line of the file"""
        self.cur_instruction = self.vm[self.cur_line_index]

    def has_more_commands(self) -> bool:
        """Are there more commands in the input?

        Returns:
            bool: True if there are more commands, False otherwise.
        """
        return self.cur_instruction != "EOF"

    def advance(self) -> None:
        """Reads the next command from the input and makes it the current 
        command. Should be called only if has_more_commands() is true. Initially
        there is no current command.
        """
        self.cur_line_index += 1
        self.cur_instruction = self.vm[self.cur_line_index]


    def set_command_type(self) -> str:
        """
        Returns:
            str: the type of the current VM command.
            "C_ARITHMETIC" is returned for all arithmetic commands.
            For other commands, can return:
            "C_PUSH", "C_POP", "C_LABEL", "C_GOTO", "C_IF", "C_FUNCTION",
            "C_RETURN", "C_CALL".
        """
        if self.cur_instruction.split()[0] in ["add", "sub", "neg", "eq", "gt", "lt", "and", "or", "not"]:
            self.cur_command_type = "C_ARITHMETIC"
        elif self.cur_instruction.split()[0] == "if-goto":
            self.cur_command_type = "C_IF"
        else:
            if self.cur_instruction.split()[0] == "function":
                self.curr_function = self.arg1()
            self.cur_command_type = "C_" + self.cur_instruction.split()[0].upper()



    def arg1(self) -> str:
        """
        Returns:
            str: the first argument of the current command. In case of 
            "C_ARITHMETIC", the command itself (add, sub, etc.) is returned. 
            Should not be called if the current command is "C_RETURN".
        """
        assert self.cur_command_type != "C_RETURN", "Should not be called if the current command is C_RETURN"
        if self.cur_command_type == "C_FUNCTION":
            self.curr_function = self.cur_instruction.split()[1]
        if self.cur_command_type == "C_ARITHMETIC":
            return self.cur_instruction.split()[0]
        return self.cur_instruction.split()[1]

    def arg2(self) -> int:
        """
        Returns:
            int: the second argument of the current command. Should be
            called only if the current command is "C_PUSH", "C_POP", 
            "C_FUNCTION" or "C_CALL".
        """
        if self.cur_command_type not in ["C_PUSH", "C_POP", "C_FUNCTION", "C_CALL"]:
            raise Exception("Should be called only if the current command is C_PUSH or C_POP")
        return int(self.cur_instruction.split()[2])

    def get_segment(self):
        assert self.cur_command_type in ["C_PUSH", "C_POP"], \
            "Should be called only if the current command is C_PUSH or C_POP"
        return self.cur_instruction.split()[1]

    def get_function(self):
        return self.curr_function

if __name__ == '__main__':
    pass
    # parser1 = Parser("StackTest.vm")
    # with open("output.asm", 'w') as output_file:
    #     code1 = CodeWriter(output_file)
    #     code1.set_file_name("StackTest.vm")
    #     while parser1.has_more_commands():
    #         parser1.set_command_type()
    #         print(parser1.cur_instruction)
    #         print(parser1.cur_command_type)
    #         print(parser1.arg1())
    #         print(parser1.arg2())
    #
    #         if parser1.cur_command_type == "C_ARITHMETIC":
    #             code1.write_arithmetic(parser1.arg1())
    #         else:
    #             code1.write_push_pop(parser1.cur_command_type, parser1.get_segment(), parser1.arg2())
    #         parser1.advance()
