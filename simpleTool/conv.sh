	#!/bin/bash
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

#Create wasm files
for file in mutantprograms/*.c; do
if [ -f "$file" ]; then 
        base_file=$(basename $file)
        clang --target=wasm32 --no-standard-libraries -Wl,--export-all -Wl,--no-entry -o wasm/${base_file%.*}.wasm $file
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

#Converst wasm to wat
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
#stops code runnining if takes longer than 2.5 seconds
	cd ..
	cd mutantprograms
	for cProg in *.c ; do
		if [[ "$cProg" == *"$base_file"* ]];then
			file_path=$(basename $cProg ".c")
			clang $cProg -o $file_path.o
			./$file_path.o #& sleep 2.5 ; kill $!
			echo $? > ../differences/$base_file/C_out/"$file_path".txt
		
		fi
	done
  fi
done

cd ..
cd differences

for prog in *; do
	cd ..
    cd wasm
   for file in *.wasm; do
        if [[ "$file" == *"$prog"* ]] ; then
            base_file=$(basename $file ".wasm" )
			python3 ../../editNode.py $base_file
			nodejs main.js > ../differences/$prog/Wasm_out/$base_file.txt
        fi
    done
	cd ..
    cd differences
done

cd ..
cd ..
bash findErWasm.sh









