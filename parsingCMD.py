import argparse

parser = argparse.ArgumentParser()

parser.add_argument("--file", type=str)
parser.add_argument("--output", type=str)

args = parser.parse_args()

print(args.file)
print(args.output)
