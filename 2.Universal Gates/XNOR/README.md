# XNOR Gate Simulation using Verilog

## Overview

This project implements and simulates an **XNOR (Exclusive NOR) Gate** using **Verilog HDL**. The XNOR gate produces a HIGH output when the inputs are the same and a LOW output when the inputs are different. The design is verified using a testbench that applies all possible input combinations.

## Truth Table

| A | B | Y = A XNOR B |
|---|---|--------------|
| 0 | 0 |      1       |
| 0 | 1 |      0       |
| 1 | 0 |      0       |
| 1 | 1 |      1       |

## Design Description

The XNOR gate performs the Exclusive NOR operation on the input signals.

### Inputs

* A : First input signal
* B : Second input signal

### Output

* Y : XNOR output

## Simulation

The testbench verifies the XNOR gate operation by applying all possible input combinations.

### Expected Results

A=0, B=0 → Y=1

A=0, B=1 → Y=0

A=1, B=0 → Y=0

A=1, B=1 → Y=1

## Tools Used

* Verilog HDL
* Xilinx Vivado
* GTKWave 

## Learning Outcomes

* Understanding XNOR gate operation
* Writing combinational logic in Verilog
* Creating testbenches
* Simulating and verifying digital circuits
* Understanding equivalence checking using XNOR logic

## Author

Harsha Vardhan Nalluri

## License

This project is available for educational and learning purposes.