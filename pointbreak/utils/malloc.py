from utils.gdb_utils import execute_output

def malloc(size:int) -> int:
    output = execute_output(f'call malloc({size})')
    return int(output[0].split(' ')[2]) # mem addr