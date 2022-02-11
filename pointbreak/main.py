import argparse
import json
from types import FunctionType
from typing import Sequence
from pointbreak.mut_engine import *
from pointbreak.utils.gdb_utils import *
from pointbreak.utils.malloc import *
import gdb

def fuzz_wasm(filename:str, func:str, corpus: list, args:str = None) -> int:
    gdb.execute(f'file {filename}')
    # set snapshot breakpoint
    gdb.execute(f'break {func}')
    print(args)
    gdb.execute(f'r  {args}')

    for c in corpus:
        fuzz_strings = permuted_string(c)
        i = 0
        while i < 100:
            print(f'Fuzz {i}:')
            i +=1
            # snapshot the system
            gdb.execute('checkpoint')
            curr_string = next(fuzz_strings)
            # set the register that holds the first argument (amd64 arch) to the address of fuzz_string
            gdb.execute(f'set $rdi="{curr_string}"')

            # write fuzz_string to that address
            #inferior = gdb.inferiors()[0]
            #inferior.write_memory(fuzz_string_addr, fuzz_string, len(fuzz_string))

            print(f'Str len: {len(curr_string)}')
            gdb.execute("x/s $rdi")
            gdb.execute('finish')
            # check if the program has crashed
            if execute_output('info checkpoints')[0] == 'No checkpoints.':
                print('#')
                print('# The program has crashed! Stack exhaustion or bug???')
                print('#')
                gdb.execute('quit')
                return 0
            else:
                # restore snapshot
                gdb.execute("restart 1")
                gdb.execute("delete checkpoint 0")
    print('No crashes detected...')
    gdb.execute('quit')
    return 0

def fuzz_86(filename:str, func:str, corpus: list,  mut_eng: FunctionType, args:str = None) -> int:
    gdb.execute(f'file {filename}')
    # set snapshot breakpoint
    gdb.execute(f'break {func}')
    print(args)
    gdb.execute(f'r  {args}')

    #Permutation fuzzing:
    for c in corpus:
        fuzz_strings = mut_eng(c)
        i = 0
        print(f'Fuzzing: {fuzz_strings}')
        while i < 100:
            print(f'Mut Iteration {i}:')
            i +=1
            # snapshot the system
            gdb.execute('checkpoint')
            curr_string = next(fuzz_strings)+"0"
            # set the register that holds the first argument (amd64 arch) to the address of fuzz_string
            gdb.execute(f'set $rdi="{str(curr_string)}"')

            # write fuzz_string to that address
            #inferior = gdb.inferiors()[0]
            #inferior.write_memory(fuzz_string_addr, fuzz_string, len(fuzz_string))

            print(f'Str len: {len(curr_string)}')
            gdb.execute("x/s $rdi")
            gdb.execute('finish')
            # check if the program has crashed
            if execute_output('info checkpoints')[0] == 'No checkpoints.':
                print('#')
                print('# The program has crashed! Stack exhaustion or bug???')
                print('#')
                gdb.execute('quit')
                return 0
            else:
                # restore snapshot
                gdb.execute("restart 1")
                gdb.execute("delete checkpoint 0")
    #Length fuzzing:
    fuzz_strings = mut_eng(corpus[0])
    i = 0
    print(f'Exhaustive Fuzzing Length: {fuzz_strings}')
    while i < 10_000:
        print(f'Mut Iteration {i}:')
        i +=1
        # snapshot the system
        gdb.execute('checkpoint')
        curr_string = next(fuzz_strings)+"0"
        # set the register that holds the first argument (amd64 arch) to the address of fuzz_string
        gdb.execute(f'set $rdi="{str(curr_string)}"')

        # write fuzz_string to that address
        #inferior = gdb.inferiors()[0]
        #inferior.write_memory(fuzz_string_addr, fuzz_string, len(fuzz_string))

        print(f'Str len: {len(curr_string)}')
        gdb.execute("x/s $rdi")
        gdb.execute('finish')
        # check if the program has crashed
        if execute_output('info checkpoints')[0] == 'No checkpoints.':
            print('#')
            print('# Program has crashed, Stack exhaustion or bug?')
            print('#')
            gdb.execute('quit')
            return 0
        else:
            # restore snapshot
            gdb.execute("restart 1")
            gdb.execute("delete checkpoint 0")

    print('No crashes detected...')
    gdb.execute('quit')
    return 0

def main(argv: Sequence[str] = None) -> int:
    #parser = argparse.ArgumentParser()
    #parser.add_argument('file', metavar='path/to/file', help='input file')
    #args = parser.parse_args(argv)
    with open("pointbreak/fuzz_c.json", "r") as f:
        data = json.load(f)
    if data["mode"] == "x86":
        if data["entropy"] == "high":
            fuzz_86(data["target"], data["func"], data["corpus"], high_entropy_permuted_string, data["args"])
        if data["entropy"] == "medium":
            fuzz_86(data["target"], data["func"], data["corpus"], permuted_string, data["args"])
        if data["entropy"] == "low":
            fuzz_86(data["target"], data["func"], data["corpus"], permuted_string, data["args"])
    elif data["mode"] == "wasm":
        fuzz_wasm(data["target"], data["func"], data["corpus"], data["args"])

if __name__ == "__main__":
    raise SystemExit(main())
