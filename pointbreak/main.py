import json
from pointbreak.fuzzer import *

def main() -> int:
    with open("pointbreak/fuzz_c.json", "r") as f:
        data = json.load(f)
    for t in data["targets"]:
        fuzzer = Fuzz(data["file"], t["func"], data["mode"], data["entropy"], t["corpus"], data["args"])
        fuzzer.fuzz()
        print(f"Finished fuzzing: {t['func']}")
        print(input("Continue..."))
    #fuzzer = Fuzz(data["file"], data["targets"][1]["func"], data["mode"], data["entropy"], data["targets"][1]["corpus"], data["targets"][1]["args"])
    #fuzzer.fuzz()
    #print('Finished fuzzing: {t["target"]}')
    gdb.execute('quit')
    return 0

if __name__ == "__main__":
    raise SystemExit(main())
