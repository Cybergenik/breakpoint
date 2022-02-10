import random
from itertools import permutations

fuzz_email = ''
def get_fuzz_email():
    global fuzz_email

    if fuzz_email == '':
        fuzz_email = 'test@email.com' # start case
    else:
        fuzz_email += 'A'             # append an 'A' to the email

    return fuzz_email

def permuted_string(s: str) -> str:
    curr_str = s
    yield curr_str
    while True:
        curr_str += chr(random.randint(1,256))
        yield random.choice(permutations(curr_str, len(curr_str)))