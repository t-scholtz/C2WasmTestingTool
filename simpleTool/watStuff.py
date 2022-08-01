import glob
from operator import contains
import argparse
from fileinput import filename
import sys

parser = argparse.ArgumentParser(description='A test program.')

parser.add_argument("fileName", help="Accepts name of file")

args = parser.parse_args()

filename = args.fileName

all_files = glob.glob("Wat_Diff/*.txt")

numofDiff=0

with open("../../potErrors/"+filename+".txt","a") as out:
    for file_name in all_files:
        # Read the file
        with open(file_name) as f:
            count = 0
            for line in f:
                count=count+1
            if count > 4:
                out.write("\n")
                out.write(file_name)
                numofDiff=numofDiff+1

sys.exit(numofDiff)


