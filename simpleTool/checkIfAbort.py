import glob
from operator import contains
import argparse
from fileinput import filename
import sys

parser = argparse.ArgumentParser(description='A test program.')

parser.add_argument("fileName", help="Accepts name of file")

args = parser.parse_args()

filename = args.fileName

conditionalVar=0

with open(filename+".txt") as wasm:
    with open ("../Wasm_out/"+filename+".txt") as wat:
        wasmVal = wasm.readline()
        watVal = wat.readline()
        if((int(wasmVal) == 134) and (int(watVal) == 7)):
            conditionalVar = 1
sys.exit(conditionalVar)