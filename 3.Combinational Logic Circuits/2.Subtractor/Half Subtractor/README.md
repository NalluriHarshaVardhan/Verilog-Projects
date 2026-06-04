# Half Subtractor Simulation using Verilog

## Overview

This project implements and simulates a Half Subtractor using Verilog HDL. A Half Subtractor is a combinational logic circuit that subtracts one binary digit from another and produces a Difference output and a Borrow output. The design is verified using a testbench that applies all possible input combinations.

## Truth Table

| A | B | Difference | Borrow |
| - | - | ---------- | ------ |
| 0 | 0 | 0          | 0      |
| 0 | 1 | 1          | 1      |
| 1 | 0 | 1          | 0      |
| 1 | 1 | 0          | 0      |

## Design Description

The Half Subtractor performs binary subtraction of two input bits and generates a Difference output and a Borrow output.

### Inputs

* A : Minuend input
* B : Subtrahend input

### Outputs

* Difference : Difference output
* Borrow : Borrow output

## Simulation

The testbench verifies the Half Subtractor operation by applying all possible input combinations.

### Expected Results

A=0, B=0 → Difference=0, Borrow=0

A=0, B=1 → Difference=1, Borrow=1

A=1, B=0 → Difference=1, Borrow=0

A=1, B=1 → Difference=0, Borrow=0

## Tools Used

* Verilog HDL
* Xilinx Vivado
* GTKWave (optional)

## Learning Outcomes

* Understanding Half Subtractor operation
* Writing combinational logic in Verilog
* Creating testbenches
* Simulating and verifying digital circuits

## Author

Harsha Vardhan Nalluri

## License

This project is available for educational and learning purposes.
