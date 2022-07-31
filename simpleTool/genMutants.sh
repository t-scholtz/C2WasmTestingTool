#!/bin/bash

[ -d raw_output ] && rm -r raw_output
[ -d output ] && rm -r output
[ -d compiled_programs ] && rm -r compiled_programs

mkdir compiled_programs
mkdir raw_output
mkdir output

cd results
[ -d mutantprograms ] && rm -r mutantprograms
mkdir mutantprograms
cd ..

# Generate Mutant C code
for file in raw_input/*.c; do 
    if [ -f "$file" ]; then 
        base_file=$(basename $file)
        clang -fembed-bitcode -g $file -o compiled_programs/${base_file%.*}.o
    fi 
done

for file in compiled_programs/*.o; do 
    if [ -f "$file" ]; then 
        base_file=$(basename $file)
        mull-cxx --reporters Elements $file
        rm -r *.html
        mv *.json raw_output/${base_file%.*}.json
    fi 
done

python3 process_output.py

cd output

for file in *.c; do
mv $file ../results/mutantprograms/
done

cd ..
cd raw_input
for file in *.c; do
cp $file ../results/mutantprograms/
done

cd ..
bash conv.sh



