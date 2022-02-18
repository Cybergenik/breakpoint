import json
from pointbreak.fuzzer import *

def main() -> int:
    with open("pointbreak/fuzz_c.json", "r") as f:
        data = json.load(f)
    fuzzer = Fuzz(data["target"], data["func"], data["mode"], data["entropy"], data["corpus"], data["args"])
    fuzzer.fuzz()
    return 0

if __name__ == "__main__":
    raise SystemExit(main())
