# Full Subtractor Simulation using Verilog

## Overview

This project implements and simulates a Full Subtractor using Verilog HDL. A Full Subtractor is a combinational logic circuit that subtracts two binary inputs along with a Borrow In input and produces a Difference output and a Borrow Out output. The design is verified using a testbench that applies all possible input combinations.

## Truth Table

| A | B | Bin | Difference | Bout |
| - | - | --- | ---------- | ---- |
| 0 | 0 | 0   | 0          | 0    |
| 0 | 0 | 1   | 1          | 1    |
| 0 | 1 | 0   | 1          | 1    |
| 0 | 1 | 1   | 0          | 1    |
| 1 | 0 | 0   | 1          | 0    |
| 1 | 0 | 1   | 0          | 0    |
| 1 | 1 | 0   | 0          | 0    |
| 1 | 1 | 1   | 1          | 1    |

## Design Description

The Full Subtractor performs binary subtraction of two input bits and a Borrow In bit, generating a Difference output and a Borrow Out output.

### Inputs

* A : Minuend input
* B : Subtrahend input
* Bin : Borrow input

### Outputs

* Difference : Difference output
* Bout : Borrow output

## Simulation

The testbench verifies the Full Subtractor operation by applying all possible input combinations.

### Expected Results

A=0, B=0, Bin=0 → Difference=0, Bout=0

A=0, B=0, Bin=1 → Difference=1, Bout=1

A=0, B=1, Bin=0 → Difference=1, Bout=1

A=0, B=1, Bin=1 → Difference=0, Bout=1

A=1, B=0, Bin=0 → Difference=1, Bout=0

A=1, B=0, Bin=1 → Difference=0, Bout=0

A=1, B=1, Bin=0 → Difference=0, Bout=0

A=1, B=1, Bin=1 → Difference=1, Bout=1

## Tools Used

* Verilog HDL
* Xilinx Vivado
* GTKWave (optional)

## Learning Outcomes

* Understanding Full Subtractor operation
* Writing combinational logic in Verilog
* Creating testbenches
* Simulating and verifying digital circuits

## Author

Harsha Vardhan Nalluri

## License

This project is available for educational and learning purposes.
