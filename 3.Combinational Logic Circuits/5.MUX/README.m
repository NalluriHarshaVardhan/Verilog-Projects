# 4-to-1 Multiplexer (MUX) Simulation using Verilog

## Overview

This project implements and simulates a 4-to-1 Multiplexer (MUX) using Verilog HDL. A Multiplexer is a combinational logic circuit that selects one of several input signals and forwards it to a single output line based on the select inputs. The design is verified using a testbench that applies different input and select combinations.

## Truth Table

| S1 | S0 | Output (Y) |
| -- | -- | ---------- |
| 0  | 0  | I0         |
| 0  | 1  | I1         |
| 1  | 0  | I2         |
| 1  | 1  | I3         |

## Design Description

The 4-to-1 Multiplexer selects one of four input signals and routes it to the output according to the values of the select lines.

### Inputs

* I0 : Input 0
* I1 : Input 1
* I2 : Input 2
* I3 : Input 3
* S1 : Most Significant Select Line
* S0 : Least Significant Select Line

### Output

* Y : Selected output

## Simulation

The testbench verifies the 4-to-1 Multiplexer operation by applying various input combinations and changing the select lines.

### Expected Results

S1S0 = 00 → Y = I0

S1S0 = 01 → Y = I1

S1S0 = 10 → Y = I2

S1S0 = 11 → Y = I3

## Tools Used

* Verilog HDL
* Xilinx Vivado
* GTKWave

## Learning Outcomes

* Understanding multiplexer operation
* Designing combinational logic circuits
* Writing Verilog modules for multiplexers
* Creating testbenches
* Simulating and verifying digital circuits

## Author

Harsha Vardhan Nalluri

## License

This project is available for educational and learning purposes.
