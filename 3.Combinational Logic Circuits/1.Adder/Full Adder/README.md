# Full Adder Simulation using Verilog

## Overview

This project implements and simulates a Full Adder using Verilog HDL. A Full Adder is a combinational logic circuit that adds three binary inputs and produces a Sum output and a Carry output. The design is verified using a testbench that applies all possible input combinations.

## Truth Table

| A | B | Cin | Sum | Cout |
| - | - | --- | --- | ---- |
| 0 | 0 | 0   | 0   | 0    |
| 0 | 0 | 1   | 1   | 0    |
| 0 | 1 | 0   | 1   | 0    |
| 0 | 1 | 1   | 0   | 1    |
| 1 | 0 | 0   | 1   | 0    |
| 1 | 0 | 1   | 0   | 1    |
| 1 | 1 | 0   | 0   | 1    |
| 1 | 1 | 1   | 1   | 1    |

## Design Description

The Full Adder performs binary addition of three input bits and generates a Sum output and a Carry output.

### Inputs

* A : First input bit
* B : Second input bit
* Cin : Carry input

### Outputs

* Sum : Sum output
* Cout : Carry output

## Simulation

The testbench verifies the Full Adder operation by applying all possible input combinations.

### Expected Results

A=0, B=0, Cin=0 → Sum=0, Cout=0

A=0, B=0, Cin=1 → Sum=1, Cout=0

A=0, B=1, Cin=0 → Sum=1, Cout=0

A=0, B=1, Cin=1 → Sum=0, Cout=1

A=1, B=0, Cin=0 → Sum=1, Cout=0

A=1, B=0, Cin=1 → Sum=0, Cout=1

A=1, B=1, Cin=0 → Sum=0, Cout=1

A=1, B=1, Cin=1 → Sum=1, Cout=1

## Tools Used

* Verilog HDL
* Xilinx Vivado
* GTKWave (optional)

## Learning Outcomes

* Understanding Full Adder operation
* Writing combinational logic in Verilog
* Creating testbenches
* Simulating and verifying digital circuits

## Author

Harsha Vardhan Nalluri

## License

This project is available for educational and learning purposes.
