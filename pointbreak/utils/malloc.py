from utils.gdb_utils import execute_output

def malloc(size):
    output = execute_output('call malloc(' + str(size) + ')')
    return int(output[0].split(' ')[2]) # mem addr