fuzz_email = ''
def get_fuzz_email():
    global fuzz_email

    if fuzz_email == '':
        fuzz_email = 'test@email.com' # start case
    else:
        fuzz_email += 'A'             # append an 'A' to the email

    return fuzz_email