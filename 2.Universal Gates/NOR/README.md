# NOR Gate Simulation using Verilog

## Overview

This project implements and simulates a **NOR Gate** using **Verilog HDL**. The NOR gate is a universal logic gate that produces a HIGH output only when all inputs are LOW. The design is verified using a testbench that applies all possible input combinations.

## Truth Table

| A | B | Y = A NOR B |
|---|---|-------------|
| 0 | 0 |      1      |
| 0 | 1 |      0      |
| 1 | 0 |      0      |
| 1 | 1 |      0      |

## Design Description

The NOR gate performs the negation of the OR operation on the input signals.

### Inputs

* A : First input signal
* B : Second input signal

### Output

* Y : NOR output

## Simulation

The testbench verifies the NOR gate operation by applying all possible input combinations.

### Expected Results

A=0, B=0 → Y=1

A=0, B=1 → Y=0

A=1, B=0 → Y=0

A=1, B=1 → Y=0

## Tools Used

* Verilog HDL
* Xilinx Vivado
* GTKWave 

## Learning Outcomes

* Understanding NOR gate operation
* Writing combinational logic in Verilog
* Creating testbenches
* Simulating and verifying digital circuits
* Learning about universal gates

## Author

Harsha Vardhan Nalluri

## License

This project is available for educational and learning purposes.