# NOT Gate Simulation using Verilog

## Overview

This project implements and simulates a NOT gate (Inverter) using Verilog HDL. The NOT gate produces the complement of the input signal. The design is verified using a testbench that applies all possible input combinations.

## Truth Table

| A | Y = NOT A |
| - | --------- |
| 0 | 1         |
| 1 | 0         |

## Design Description

The NOT gate performs logical inversion on the input signal.

### Input

* A : Input signal

### Output

* Y : Inverted output

## Simulation

The testbench verifies the NOT gate operation by applying all possible input values.

### Expected Results

A=0 → Y=1

A=1 → Y=0

## Tools Used

* Verilog HDL
* Xilinx Vivado

## Learning Outcomes

* Understanding inverter operation
* Writing combinational logic in Verilog
* Creating testbenches
* Simulating and verifying digital circuits

## Author

Harsha Vardhan Nalluri

## License

This project is available for educational and learning purposes.
