# 1-to-4 Demultiplexer (DEMUX) Simulation using Verilog

## Overview

This project implements and simulates a 1-to-4 Demultiplexer (DEMUX) using Verilog HDL. A Demultiplexer is a combinational logic circuit that takes a single input signal and routes it to one of four output lines based on the select inputs. The design is verified using a testbench that applies different input and select combinations.

## Truth Table

| S1 | S0 | D | Y0 | Y1 | Y2 | Y3 |
| -- | -- | - | -- | -- | -- | -- |
| 0  | 0  | D | D  | 0  | 0  | 0  |
| 0  | 1  | D | 0  | D  | 0  | 0  |
| 1  | 0  | D | 0  | 0  | D  | 0  |
| 1  | 1  | D | 0  | 0  | 0  | D  |

## Design Description

The 1-to-4 Demultiplexer routes a single input signal to one of four output lines based on the values of the select lines.

### Inputs

* D : Data input
* S1 : Most Significant Select Line
* S0 : Least Significant Select Line

### Outputs

* Y0 : Output 0
* Y1 : Output 1
* Y2 : Output 2
* Y3 : Output 3

## Simulation

The testbench verifies the 1-to-4 Demultiplexer operation by applying different input values and changing the select lines.

### Expected Results

S1S0 = 00, D = 1 → Y0 = 1, Y1 = Y2 = Y3 = 0

S1S0 = 01, D = 1 → Y1 = 1, Y0 = Y2 = Y3 = 0

S1S0 = 10, D = 1 → Y2 = 1, Y0 = Y1 = Y3 = 0

S1S0 = 11, D = 1 → Y3 = 1, Y0 = Y1 = Y2 = 0

## Tools Used

* Verilog HDL
* Xilinx Vivado
* GTKWave

## Learning Outcomes

* Understanding demultiplexer operation
* Designing combinational logic circuits
* Writing Verilog modules for demultiplexers
* Creating testbenches
* Simulating and verifying digital circuits

## Author

Harsha Vardhan Nalluri

## License

This project is available for educational and learning purposes.
