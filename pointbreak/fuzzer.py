from types import FunctionType
from typing import Sequence
from pointbreak.mut_engine import *
from pointbreak.utils.gdb_utils import *
from pointbreak.utils.malloc import *
import gdb


class Fuzz:
    def __init__(self, file:str, func:str, mode:str, entropy:str, corpus:list, init_args:list):
        """
        Initialize Fuzzer with configured options and begin gdb fuzzing environment
        """
        self.file = file
        self.func = func
        self.mode = mode
        self.corpus = corpus
        self.init_args = " ".join(init_args)
        if entropy == "high":
            self.mut_eng = high_entropy_permuted_string 
        elif entropy == "moderate":
            self.mut_eng = permuted_string
        else:
            self.mut_eng = permuted_string
        # set fuzz program
        gdb.execute(f'file {self.file}')
        # gdb quality configs
        gdb.execute(f'set pagination off')
        gdb.execute(f'set height unlimited')
        gdb.execute(f'set logging off')
        gdb.execute(f'set logging redirect off')
        # set snapshot breakpoint
        gdb.execute(f'break {self.func}')

    def finish_check(self) -> bool:
        # finish execution of current fuzz state
        gdb.execute('finish')
        # check if the program has crashed
        return execute_output('info checkpoints')[0] == 'No checkpoints.'

    def output_stack(self, itr:int, str_perm:str, ori_str:str) -> None:
        frame = gdb.execute("info frame", to_string=True)
        local_vars = gdb.execute("info locals", to_string=True)
        backtrace = gdb.execute("backtrace full", to_string=True)
        gdb.execute(f'gcore {self.file}_SIGEGV.core')
        with open(f"{self.file}_fuzzinfo.txt", "w") as f:
            f.write(f"Mutation Iteration: {itr}\n")
            f.write(f"Original Input: {ori_str}\n")
            f.write(f"Input Permutation: {str_perm}\n")
            f.write("Frame:\n")
            f.write("--------------------------------\n")
            f.write(frame)
            f.write("--------------------------------\n")
            f.write("Locals:\n")
            f.write("--------------------------------\n")
            f.write(local_vars)
            f.write("--------------------------------\n")
            f.write("Backtrace:\n")
            f.write("--------------------------------\n")
            f.write(backtrace)
            f.write("--------------------------------\n")
        print('#')
        print('# The program has CRASHED! Created core file and fuzz info trace file.')
        print('#')
        gdb.execute('quit')

    def restore(self) -> None:
        # restore snapshot and delete old one
        gdb.execute("restart 1")
        gdb.execute("delete checkpoint 0")

    def fuzz(self) -> None:
        gdb.execute(f'r  {self.init_args}')

        # NULL check
        print("Initial Null Check:")
        gdb.execute('checkpoint')
        # setting null value on first argument
        gdb.execute("set $rdi=null")
        gdb.execute("x/s $rdi")
        if self.finish_check():
            self.output_stack(i, curr_string, c)
            raise SystemExit(0)
        self.restore()

        #Permutation fuzzing:
        for c in self.corpus:
            fuzz_strings = self.mut_eng(c)
            print(f'Fuzzing: {fuzz_strings}')
            for i in range(100):
                print(f'Mut Iteration {i}:')

                # snapshot the system
                gdb.execute('checkpoint')
                curr_string = next(fuzz_strings)+"0"

                # set the register that holds the first argument (amd64 arch) to the address of fuzz_string
                gdb.execute(f'set $rdi="{str(curr_string)}"')

                frame = gdb.execute("info frame", to_string=True).split("\n")
                print(f"{frame[0]}")
                print(f"    Input len: {len(curr_string)}")
                register = gdb.execute("x/s $rdi", to_string=True)
                print(f"    Register: {register}")

                if self.finish_check():
                    self.output_stack(i, curr_string, c)
                    raise SystemExit(0)
                self.restore()

        #Length fuzzing:
        fuzz_strings = self.mut_eng(self.corpus[0])
        print(f'Exhaustive Fuzzing Length: {fuzz_strings}')
        for i in range(10_000):
            print(f'Mut Iteration {i}:')

            # snapshot the system
            gdb.execute('checkpoint')
            curr_string = next(fuzz_strings)+"0"

            # set the register that holds the first argument (amd64 arch) to the address of fuzz_string
            gdb.execute(f'set $rdi="{str(curr_string)}"')

            frame = gdb.execute("info frame", to_string=True).split("\n")
            print(f"{frame[0]}")
            print(f"    Input len: {len(curr_string)}")
            register = gdb.execute("x/s $rdi", to_string=True)
            print(f"    Register: {register}")

            if self.finish_check():
                self.output_stack(i, curr_string, c)
                raise SystemExit(0)
            self.restore()

