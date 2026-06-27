# XOR Gate Simulation using Verilog

## Overview

This project implements and simulates an **XOR (Exclusive OR) Gate** using **Verilog HDL**. The XOR gate produces a HIGH output when the inputs are different and a LOW output when the inputs are the same. The design is verified using a testbench that applies all possible input combinations.

## Truth Table

| A | B | Y = A XOR B |
|---|---|-------------|
| 0 | 0 |      0      |
| 0 | 1 |      1      |
| 1 | 0 |      1      |
| 1 | 1 |      0      |

## Design Description

The XOR gate performs the Exclusive OR operation on the input signals.

### Inputs

* A : First input signal
* B : Second input signal

### Output

* Y : XOR output

## Simulation

The testbench verifies the XOR gate operation by applying all possible input combinations.

### Expected Results

A=0, B=0 → Y=0

A=0, B=1 → Y=1

A=1, B=0 → Y=1

A=1, B=1 → Y=0

## Tools Used

* Verilog HDL
* Xilinx Vivado
* GTKWave

## Learning Outcomes

* Understanding XOR gate operation
* Writing combinational logic in Verilog
* Creating testbenches
* Simulating and verifying digital circuits
* Understanding the concept of Exclusive OR logic

## Author

Harsha Vardhan Nalluri

## License

This project is available for educational and learning purposes.