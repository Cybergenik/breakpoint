import gdb
import argparse
from typing import Sequence
from pointbreak.utils.gdb_utils import *
from pointbreak.utils.malloc import *
from mut_engine import get_fuzz_email


def fuzz(filename:str, func:str, args:str = None) -> int:
    gdb.execute('file {filename}')
    # set shapshot breakpoint
    gdb.execute(f'break {func}')
    gdb.execute(f'r  {"".join(args)}')

    i = 1
    while True:
        print(f'Fuzz iter: {i}')
        i +=1
        # snapshot the system
        gdb.execute('checkpoint')
        fuzz_string = get_fuzz_email() + '\0'
        if len(fuzz_string) > 65000:
            break
        fuzz_string_addr = malloc( len(fuzz_string) + 10 )

        # set the register that holds the first argument (amd64 arch) to the address of fuzz_string
        gdb.execute('set $rdi=' + str(fuzz_string_addr))

        # write fuzz_string to that address
        inferior = gdb.inferiors()[0]
        inferior.write_memory(fuzz_string_addr, fuzz_string, len(fuzz_string))

        print(f'Str len: {len(fuzz_string)}')
        gdb.execute("x/s $rdi")
        gdb.execute('finish')
        # check if the program has crashed
        if execute_output('info checkpoints')[0] == 'No checkpoints.':
            print('#')
            print('# The program has crashed! Stack exhaustion or bug???')
            print('# Now is your turn, have fun! :P')
            print('#')
            gdb.execute('quit')
            return 0
        else:
            # restore snapshot
            gdb.execute("restart 1")
            gdb.execute("delete checkpoint 0")
    # script ends
    print('No crashes detected...')
    gdb.execute('quit')
    return 0

def main(argv: Sequence[str] = None) -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument('-f', '--file', metavar='path/to/file', help='')
    parser.add_argument('-p', '--point', metavar='', help='')
    parser.add_argument('-a', '--args', metavar='', help='')
    args = parser.parse_args(argv)
    return fuzz("test/getdomain", "parser", "test@email.com")

if __name__ == "__main__":
    raise SystemExit(main())
