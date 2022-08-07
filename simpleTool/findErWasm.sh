#!/bin/bash
#file Mangament
python3 createTable.py

cd results
cd differences

#Goes through data and collects reults into text files under pot errors
for folder in *; do
   
    echo  $folder >>  ../potErrors/$folder".txt"

    #Append output + differences
    cd $folder
    declare -i count
    count=-1
    declare -i wasmDiff
    wasmDiff=0
    cd C_out
    for mutant in *.txt; do
    	count+=1
        file_name=${mutant%".txt"}
        
        if ! cmp --silent -- $mutant ../Wasm_out/$file_name".txt";then
            declare -i abortCon
            python3 ../../../../checkIfAbort.py $file_name
            abortCon=$?

            if [ $abortCon -eq 0 ]; then
                wasmDiff+=1
                echo $mutant >> ../../../potErrors/$folder".txt"
                diff $mutant ../Wasm_out/$file_name".txt">> ../../../potErrors/$folder".txt"
            fi

            
        fi
   
    done
    echo "Number of Mutants in "$folder" is = "$count" _mod" >> ../../../potErrors/$folder".txt"
    echo "____________________________________________" >> ../../../potErrors/$folder".txt"
    echo "Wat Errors" >> ../../../potErrors/$folder".txt"
    cd ..
    declare -i watDiff
    python3 ../../../watStuff.py $folder
    watDiff=$?
    cd ..
    python ../../writeToTable.py $folder $count $wasmDiff $watDiff
done





