import argparse
from fileinput import filename

parser = argparse.ArgumentParser(description='A test program.')

parser.add_argument("fileName", help="Accepts name of file")

args = parser.parse_args()

filename = args.fileName

with open("main.js","w") as f:
    f.write("const fs = require('fs');\n")
    f.write("WebAssembly \n")
    f.write(".instantiate(fs.readFileSync('./" + filename + ".wasm'))\n")
    f.write(".then(obj => console.log(obj.instance.exports.main()));")

