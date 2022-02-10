import argparse
import json
from re import A
from typing import Sequence
from pointbreak.mut_engine import permuted_string
from pointbreak.utils.gdb_utils import *
from pointbreak.utils.malloc import *
import gdb


def fuzz(filename:str, func:str, corpus: list, args:str = None) -> int:
    gdb.execute(f'file {filename}')
    # set snapshot breakpoint
    gdb.execute(f'break {func}')
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
            gdb.execute(f'set $rdi={curr_string}')

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

def main(argv: Sequence[str] = None) -> int:
    #parser = argparse.ArgumentParser()
    #parser.add_argument('file', metavar='path/to/file', help='input file')
    #args = parser.parse_args(argv)
    with open("pointbreak/in.json", "r") as f:
        data = json.load(f)

    print(data)
    if data["mode"] == "x86":
        fuzz(data["target"], data["func"], data["corpus"], data["args"])
    elif data["mode"] == "wasm":
        ...

if __name__ == "__main__":
    raise SystemExit(main())
