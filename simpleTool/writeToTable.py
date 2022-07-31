import glob
from operator import contains
import argparse
from fileinput import filename


parser = argparse.ArgumentParser(description='A test program.')

parser.add_argument("Test", help="Test Name")
parser.add_argument("NoMutants", help="No. Mutants")
parser.add_argument("Nooutputdiff", help="No. output diff")
parser.add_argument("Nowatdiff", help="No. wat diff")

args = parser.parse_args()

testName = args.Test
mutants = args.NoMutants
flagWasm = args.Nooutputdiff
flagWat = args.Nowatdiff

with open("../../Table_Data.csv","a") as out:
    out.write(testName+", "+mutants+", "+flagWasm+", "+flagWat+" \n")


