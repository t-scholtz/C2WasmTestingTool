#!/bin/bash
#File management
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
#Creates C object code, as Mull uses object code as oppesed to raw C code 
for file in raw_input/*.c; do 
    if [ -f "$file" ]; then 
        base_file=$(basename $file)
        clang -fembed-bitcode -g $file -o compiled_programs/${base_file%.*}.o
    fi 
done
#Run Mull which produces a json file for each test
for file in compiled_programs/*.o; do 
    if [ -f "$file" ]; then 
        base_file=$(basename $file)
        mull-cxx --reporters Elements $file
        rm -r *.html
        mv *.json raw_output/${base_file%.*}.json
    fi 
done
#Uses the Json files to produce mutants
python3 process_output.py

cd output
#file managment
for file in *.c; do
mv $file ../results/mutantprograms/
done

cd ..
cd raw_input
for file in *.c; do
cp $file ../results/mutantprograms/
done

cd ..

#File managment

STRING="mutant"
cd results

[ -d wasm ] && rm -r wasm
[ -d wat ] && rm -r wat
[ -d differences ] && rm -r differences
[ -d potErrors ] && rm -r potErrors


mkdir wasm
mkdir wat
mkdir differences
mkdir potErrors

#Create wasm files using Emsripten
for file in mutantprograms/*.c; do
if [ -f "$file" ]; then 
        base_file=$(basename $file)
        emcc -O0 $file -o wasm/${base_file%.*}.html 
	fi 
done

#Converts wasm to wat
for file in wasm/*.wasm; do
if [ -f "$file" ]; then 
        base_file=$(basename $file)
        wasm2wat $file -o wat/${base_file%.*}.wat
    fi 
done

#Creates an output file for each core C program and creates a list of differents for each
cd ~/Desktop/simpleTool/results/mutantprograms
for file in *.c; do
if [[ "$file" != *"$STRING"* ]];then
	base_file=$(basename $file ".c")
	cd ..
	cd differences
 	mkdir $base_file
	cd $base_file
	mkdir C_Diff
	mkdir C_out
	mkdir Wat_Diff
	mkdir Wasm_out
	
	cd ..
	cd ..
  	cd mutantprograms
	for mutant in *.c; do
		if [[ "$mutant" == *"$STRING"* ]] && [[ "$mutant" == *"$base_file"* ]];then
			mutt_name=$(basename $mutant ".c")
			diff $file $mutant > ../differences/$base_file/C_Diff/"$mutt_name"_c.txt
	  	fi
	done

#Converst wasm to wat and records the diff between the mutant and the orignal file
	cd ..
	cd wat
	for wat in *.wat; do
		if [[ "$wat" == *"$STRING"* ]] && [[ "$wat" == *"$base_file"* ]];then
			wat_name=$(basename $wat ".wat")
			wat_text="_wat"
			file_name="${wat_name} ${wat_txt}"
			diff "$base_file".wat $wat > ../differences/$base_file/Wat_Diff/"$file_name"_wat.txt
	  	fi
	done

#runs the C code, and saves the results in a txt file, and compares the difference between the mutant and the orignal 
#stops code runnining if takes longer than 2.5 seconds - not currently active
	cd ..
	cd mutantprograms
	for cProg in *.c ; do
		if [[ "$cProg" == *"$base_file"* ]];then
			file_path=$(basename $cProg ".c")
			clang $cProg -o $file_path.o
			timeout 60 ./$file_path.o 
			echo $? > ../differences/$base_file/C_out/"$file_path".txt
		
		fi
	done
  fi
done

cd ..
cd differences
#Runs Wasm files and stores output
for prog in *; do
	cd ..
    cd wasm
   for file in *.js; do
        if [[ "$file" == *"$prog"* ]] ; then
            base_file=$(basename $file ".js" )
			timeout 60 nodejs $file  
            echo $? > ../differences/$prog/Wasm_out/$base_file.txt
        fi
    done
	cd ..
    cd differences
done

cd ..
cd ..
bash findErWasm.sh




