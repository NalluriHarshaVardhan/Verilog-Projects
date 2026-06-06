# 8-to-3 Encoder Simulation using Verilog

## Overview

This project implements and simulates an 8-to-3 Encoder using Verilog HDL. An Encoder is a combinational logic circuit that converts one active input line out of eight into a 3-bit binary code at the output. The design is verified using a testbench that applies all valid input combinations.

## Truth Table

| D7 | D6 | D5 | D4 | D3 | D2 | D1 | D0 | Y2 | Y1 | Y0 |
| -- | -- | -- | -- | -- | -- | -- | -- | -- | -- | -- |
| 0  | 0  | 0  | 0  | 0  | 0  | 0  | 1  | 0  | 0  | 0  |
| 0  | 0  | 0  | 0  | 0  | 0  | 1  | 0  | 0  | 0  | 1  |
| 0  | 0  | 0  | 0  | 0  | 1  | 0  | 0  | 0  | 1  | 0  |
| 0  | 0  | 0  | 0  | 1  | 0  | 0  | 0  | 0  | 1  | 1  |
| 0  | 0  | 0  | 1  | 0  | 0  | 0  | 0  | 1  | 0  | 0  |
| 0  | 0  | 1  | 0  | 0  | 0  | 0  | 0  | 1  | 0  | 1  |
| 0  | 1  | 0  | 0  | 0  | 0  | 0  | 0  | 1  | 1  | 0  |
| 1  | 0  | 0  | 0  | 0  | 0  | 0  | 0  | 1  | 1  | 1  |

## Design Description

The 8-to-3 Encoder converts one active input among eight input lines into its corresponding 3-bit binary code.

### Inputs

* D0 : Input line 0
* D1 : Input line 1
* D2 : Input line 2
* D3 : Input line 3
* D4 : Input line 4
* D5 : Input line 5
* D6 : Input line 6
* D7 : Input line 7

### Outputs

* Y2 : Most Significant Bit (MSB)
* Y1 : Middle output bit
* Y0 : Least Significant Bit (LSB)

## Simulation

The testbench verifies the 8-to-3 Encoder operation by activating one input line at a time and observing the corresponding binary output.

### Expected Results

D0=1 → Y2Y1Y0 = 000

D1=1 → Y2Y1Y0 = 001

D2=1 → Y2Y1Y0 = 010

D3=1 → Y2Y1Y0 = 011

D4=1 → Y2Y1Y0 = 100

D5=1 → Y2Y1Y0 = 101

D6=1 → Y2Y1Y0 = 110

D7=1 → Y2Y1Y0 = 111

## Tools Used

* Verilog HDL
* Xilinx Vivado
* GTKWave (optional)

## Learning Outcomes

* Understanding encoder operation
* Designing combinational logic circuits
* Writing Verilog modules for encoders
* Creating testbenches
* Simulating and verifying digital circuits

## Author

Harsha Vardhan Nalluri

## License

This project is available for educational and learning purposes.
