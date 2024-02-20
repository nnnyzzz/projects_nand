"""
This file is part of nand2tetris, as taught in The Hebrew University, and
was written by Aviv Yaish. It is an extension to the specifications given
[here](https://www.nand2tetris.org) (Shimon Schocken and Noam Nisan, 2017),
as allowed by the Creative Common Attribution-NonCommercial-ShareAlike 3.0
Unported [License](https://creativecommons.org/licenses/by-nc-sa/3.0/).
"""
import typing

import asm_dict


class CodeWriter:
    """Translates VM commands into Hack assembly code."""
    segments = {
        "local": "LCL",
        "argument": "ARG",
        "this": "THIS",
        "that": "THAT",
        "temp": "TEMP"
    }
    global_counter_label_func = {}
    global_counter_label_arithmetic = [0]

    def __init__(self, output_stream: typing.TextIO) -> None:
        """Initializes the CodeWriter.
            Args:
            output_stream (typing.TextIO): output stream.
        """
        # Your code goes here!
        # Note that you can write to output_stream like so:
        self.cur_instruction = None
        self.output_stream = output_stream
        self.cur_file_name = None
        self.counter_label = CodeWriter.global_counter_label_arithmetic
        self.return_address_counter = CodeWriter.global_counter_label_func

    def set_file_name(self, filename: str) -> None:
        """Informs the code writer that the translation of a new VM file is
        started.

        Args:
            filename (str): The name of the VM file.
        """
        # Your code goes here!
        # This function is useful when translating code that handles the
        # static segment. For example, in order to prevent collisions between two
        # .vm files which push/pop to the static segment, one can use the current
        # file's name in the assembly variable's name and thus differentiate between
        # static variables belonging to different files.
        # To avoid problems with Linux/Windows/MacOS differences with regards
        # to filenames and paths, you are advised to parse the filename in
        # the function "translate_file" in Main.py using python's os library,
        # For example, using code similar to:
        # input_filename, input_extension = os.path.splitext(os.path.basename(input_file.name))

        self.cur_file_name = filename

    def write_arithmetic(self, command: str) -> None:
        """Writes assembly code that is the translation of the given
        arithmetic command. For the commands eq, lt, gt, you should correctly
        compare between all numbers our computer supports, and we define the
        value "true" to be -1, and "false" to be 0.

        Args:
            command (str): an arithmetic command.
        """
        code = asm_dict.arithmetic_dict[command]
        if command in ["eq", "lt", "gt"]:
            code = code.replace("number_x", str(self.counter_label[0]))
            self.counter_label[0] += 1
        self.output_stream.write(code)

    def write_push_pop(self, command: str, segment: str, index: int) -> None:
        """Writes assembly code that is the translation of the given
        command, where command is either C_PUSH or C_POP.

        Args:
            command (str): "C_PUSH" or "C_POP".
            segment (str): the memory segment to operate on.
            index (int): the index in the memory segment.
        """
        # Your code goes here!
        # Note: each reference to "static i" appearing in the file Xxx.vm should
        # be translated to the assembly symbol "Xxx.i". In the subsequent
        # assembly process, the Hack assembler will allocate these symbolic
        # variables to the RAM, starting at address 16.

        if command == "C_PUSH":
            if segment == "temp":
                self.output_stream.write(
                    asm_dict.memory_access_dict["push_temp"].replace("_index", str(int(5 + int(index)))))
            elif segment == "static":
                self.output_stream.write(asm_dict.memory_access_dict["load_static"]
                                         .replace("file_name", self.cur_file_name).replace("i", str(index)))
            elif segment == "constant":
                self.output_stream.write(asm_dict.memory_access_dict["const_i"].replace("i", str(index)))

            elif segment == "pointer":
                self.output_stream.write(asm_dict.memory_access_dict["load_pointer"]
                                         .replace("segment", "THIS" if index == 0 else "THAT"))

            elif segment in ["local", "argument", "this", "that"]:
                self.output_stream.write(asm_dict.memory_access_dict["segment_i"]
                                         .replace("segment", self.segments[segment]).replace("i", str(index)))

            self.output_stream.write(asm_dict.memory_access_dict["push"])

        elif command == "C_POP":
            if segment == "temp":
                self.output_stream.write(
                    asm_dict.memory_access_dict["pop_temp"].replace("_index", str(int(5 + int(index)))))
            elif segment == "static":
                self.output_stream.write(asm_dict.memory_access_dict["pop_static"]
                                         .replace("file_name", self.cur_file_name).replace("i", str(index)))
            elif segment == "pointer":
                self.output_stream.write(asm_dict.memory_access_dict["pop_pointer"]
                                         .replace("segment", "THIS" if index == 0 else "THAT"))
            elif segment in ["local", "argument", "this", "that"]:
                self.output_stream.write(asm_dict.memory_access_dict["pop_segment_i"]
                                         .replace("segment", self.segments[segment])
                                         .replace("i", str(index)))

    #######################################################################
    ############################ P R O J E C T    8   #####################
    #######################################################################
    def write_label(self, label: str) -> None:
        """Writes assembly code that affects the label command.
        Let "Xxx.foo" be a function within the file Xxx.vm. The handling of
        each "label bar" command within "Xxx.foo" generates and injects the symbol
        "Xxx.foo$bar" into the assembly code stream.
        When translating "goto bar" and "if-goto bar" commands within "foo",
        the label "Xxx.foo$bar" must be used instead of "bar".

        Args:
            label (str): the label to write.
        """
        self.output_stream.write(asm_dict.branching_dict["label"].replace("label", label).replace("file_name.", ""))

    def write_goto(self, label: str) -> None:
        """Writes assembly code that affects the goto command.

        Args:
            label (str): the label to go to.
        """
        # todo check if file_name is needed

        self.output_stream.write(asm_dict.branching_dict["goto"].
                                 replace("label", label).replace("file_name.", ""))

    def write_if(self, label: str) -> None:
        """Writes assembly code that affects the if-goto command.

        Args:
            label (str): the label to go to.
        """
        self.output_stream.write(asm_dict.branching_dict["if"].
                                 replace("label", label).replace("file_name.", ""))

    def write_function(self, function_name: str, n_vars: int) -> None:
        """Writes assembly code that affects the function command.
        The handling of each "function Xxx.foo" command within the file Xxx.vm
        generates and injects a symbol "Xxx.foo" into the assembly code stream,
        that labels the entry-point to the function's code.
        In the subsequent assembly process, the assembler translates this
        symbol into the physical address where the function code starts.

        Args:
            function_name (str): the name of the function.
            n_vars (int): the number of local variables of the function.
        """
        # This is irrelevant for project 7,
        # you will implement this in project 8!
        # The pseudo-code of "function function_name n_vars" is:
        # (function_name)       // injects a function entry label into the code
        # repeat n_vars times:  // n_vars = number of local variables
        #   push constant 0     // initializes the local variables to 0
        # todo check if () is needed
        self.output_stream.write("(" + function_name + ")\n")
        for i in range(n_vars):
            self.output_stream.write(asm_dict.memory_access_dict["const_i"].replace("i", "0"))
            self.output_stream.write(asm_dict.memory_access_dict["push"])

    def write_call(self, function_name: str, n_args: int) -> None:
        """Writes assembly code that affects the call command.
        Let "Xxx.foo" be a function within the file Xxx.vm.
        The handling of each "call" command within Xxx.foo's code generates and
        injects a symbol "Xxx.foo$ret.i" into the assembly code stream, where
        "i" is a running integer (one such symbol is generated for each "call"
        command within "Xxx.foo").
        This symbol is used to mark the return address within the caller's
        code. In the subsequent assembly process, the assembler translates this
        symbol into the physical memory address of the command immediately
        following the "call" command.

        Args:
            function_name (str): the name of the function to call.
            n_args (int): the number of arguments of the function.
        """

        # This is irrelevant for project 7,
        # you will implement this in project 8!
        # The pseudo-code of "call function_name n_args" is:
        # push return_address   // generates a label and pushes it to the stack
        return_address = function_name + "$ret." + str(
            self.return_addres_counter(function_name))

        self.output_stream.write(asm_dict.memory_access_dict["load_new_label"](return_address))
        self.output_stream.write(asm_dict.memory_access_dict["push"])

        # push LCL              // saves LCL of the caller
        self.output_stream.write(asm_dict.memory_access_dict["load_segment"].replace("segment", "LCL"))
        self.output_stream.write(asm_dict.memory_access_dict["push"])
        # push ARG              // saves ARG of the caller
        self.output_stream.write(asm_dict.memory_access_dict["load_segment"].replace("segment", "ARG"))
        self.output_stream.write(asm_dict.memory_access_dict["push"])
        # push THIS             // saves THIS of the caller
        self.output_stream.write(asm_dict.memory_access_dict["load_segment"].replace("segment", "THIS"))
        self.output_stream.write(asm_dict.memory_access_dict["push"])
        # push THAT             // saves THAT of the caller
        self.output_stream.write(asm_dict.memory_access_dict["load_segment"].replace("segment", "THAT"))
        self.output_stream.write(asm_dict.memory_access_dict["push"])
        # ARG = SP-5-n_args     // repositions ARG
        self.output_stream.write(
            asm_dict.reposition_dict["reposition_source_dest_with_inc"]("SP", str(int(n_args) + 5), "ARG"))

        # LCL = SP              // repositions LCL
        self.output_stream.write(asm_dict.reposition_dict["reposition_source_dest_with_inc"]("SP", "0", "LCL"))

        # goto function_name    // transfers control to the callee

        self.write_goto(function_name)
        # (return_address)      // injects the return address label into the code
        self.write_label(return_address)

    def return_addres_counter(self, function_name: str) -> int:
        if function_name not in self.return_address_counter.keys():
            self.return_address_counter.update({function_name: 0})
            return 0
        self.return_address_counter[function_name] += 1
        x = self.return_address_counter[function_name]
        return x

    def segments_retrieve(self):
        """
        restores the relevant segments that were pushes to the stack in the call command
        """
        segments = ["THAT", "THIS", "ARG", "LCL"]
        for segment in segments:
            code = """\n@R14\nA=M-1\nD=M\n@R14\nM=M-1\n"""
            self.output_stream.write(code)
            self.output_stream.write("@" + segment + "\n")
            self.output_stream.write("M=D\n")

    def write_return(self):
        """
        writes the return commands
        """
        code = """\n@LCL\nD=M\n@R14\nM=D\n@5\nA=D-A\nD=M\n@R15\nM=D\n@SP\nA=M-1\nD=M\n@SP\nM=M-1\n@ARG\nA=M\nM=D\n@ARG\nD=M\n@SP\nM=D+1\n"""
        self.output_stream.write(code)
        self.segments_retrieve()

        self.output_stream.write("@R15\nA=M\n0;JMP\n")


    def write_init(self):
        """Writes assembly code that effects the VM initialization"""
        self.output_stream.write(asm_dict.reposition_dict["init_SP"])
        self.write_call("Sys.init", 0)  # check if 0
