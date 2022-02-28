import random
import string

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
        curr_str += random.choice(string.ascii_letters)
        yield curr_str

def high_entropy_permuted_string(s: str) -> str:
    curr_str = s
    yield curr_str + "0"
    while True:
        curr_str += random.choice(string.ascii_letters)
        curr_str += random.choice(string.ascii_letters)
        curr_str += random.choice(string.ascii_letters)
        curr_str = "".join(random.sample(curr_str, len(curr_str)))
        yield curr_str + "0"

def permuted_num(i: int) -> int:
    curr = i
    yield curr
    while True:
        curr >>= 1
        yield curr
