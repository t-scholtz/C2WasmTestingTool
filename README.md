# C2WasmTestingTool
An update tool that uses mutation testing to dent faults during the C to Wasm compilation process

To use:

Add C test files to raw_Input

Then run bash script genMutants.sh

Expected output:

A Csv file containing the number of mutants and flags per test -> Table_Data.csv
Output from tests, and the difference between the mutants -> /results/difference/testName
List of the flags in an easier to read format -> /results/potErrs
