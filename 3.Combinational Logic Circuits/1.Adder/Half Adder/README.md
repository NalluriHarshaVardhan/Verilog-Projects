# Half Adder Simulation using Verilog

## Overview

This project implements and simulates a Half Adder using Verilog HDL. A Half Adder is a combinational logic circuit that adds two binary inputs and produces a Sum output and a Carry output. The design is verified using a testbench that applies all possible input combinations.

## Truth Table

| A | B | Sum | Carry |
| - | - | --- | ----- |
| 0 | 0 | 0   | 0     |
| 0 | 1 | 1   | 0     |
| 1 | 0 | 1   | 0     |
| 1 | 1 | 0   | 1     |

## Design Description

The Half Adder performs binary addition of two input bits and generates a Sum output and a Carry output.

### Inputs

* A : First input bit
* B : Second input bit

### Outputs

* Sum : Sum output
* Carry : Carry output

## Simulation

The testbench verifies the Half Adder operation by applying all possible input combinations.

### Expected Results

A=0, B=0 → Sum=0, Carry=0

A=0, B=1 → Sum=1, Carry=0

A=1, B=0 → Sum=1, Carry=0

A=1, B=1 → Sum=0, Carry=1

## Tools Used

* Verilog HDL
* Xilinx Vivado
* GTKWave (optional)

## Learning Outcomes

* Understanding Half Adder operation
* Writing combinational logic in Verilog
* Creating testbenches
* Simulating and verifying digital circuits

## Author

Harsha Vardhan Nalluri

## License

This project is available for educational and learning purposes.
