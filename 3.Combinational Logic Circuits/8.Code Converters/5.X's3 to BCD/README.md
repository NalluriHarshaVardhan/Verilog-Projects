# Excess-3 (XS-3) to BCD Converter Simulation using Verilog

## Overview

This project implements and simulates an Excess-3 (XS-3) to BCD Converter using Verilog HDL. An Excess-3 code is a non-weighted binary code obtained by adding 3 (0011) to a decimal digit represented in BCD. This converter accepts a 4-bit Excess-3 input and generates the corresponding 4-bit BCD output. The design is verified using a testbench that applies all valid Excess-3 input combinations corresponding to decimal digits 0–9.

## Truth Table

| Excess-3 Input | Decimal | BCD Output |
| -------------- | ------- | ---------- |
| 0011           | 0       | 0000       |
| 0100           | 1       | 0001       |
| 0101           | 2       | 0010       |
| 0110           | 3       | 0011       |
| 0111           | 4       | 0100       |
| 1000           | 5       | 0101       |
| 1001           | 6       | 0110       |
| 1010           | 7       | 0111       |
| 1011           | 8       | 1000       |
| 1100           | 9       | 1001       |

## Design Description

The Excess-3 to BCD Converter subtracts the binary value 3 (0011) from a valid Excess-3 input and generates the corresponding BCD code.

### Inputs

* X3 : Most Significant Excess-3 Bit
* X2 : Excess-3 input bit
* X1 : Excess-3 input bit
* X0 : Least Significant Excess-3 Bit

### Outputs

* B3 : Most Significant BCD Bit
* B2 : BCD output bit
* B1 : BCD output bit
* B0 : Least Significant BCD Bit

## Simulation

The testbench verifies the Excess-3 to BCD Converter operation by applying all valid Excess-3 inputs and observing the corresponding BCD outputs.

### Expected Results

XS-3 = 0011 → BCD = 0000

XS-3 = 0100 → BCD = 0001

XS-3 = 0101 → BCD = 0010

XS-3 = 0110 → BCD = 0011

XS-3 = 0111 → BCD = 0100

XS-3 = 1000 → BCD = 0101

XS-3 = 1001 → BCD = 0110

XS-3 = 1010 → BCD = 0111

XS-3 = 1011 → BCD = 1000

XS-3 = 1100 → BCD = 1001

## Tools Used

* Verilog HDL
* Xilinx Vivado
* GTKWave (optional)

## Learning Outcomes

* Understanding Excess-3 coding
* Understanding BCD representation
* Designing combinational code converters
* Writing Verilog modules using case statements
* Creating testbenches
* Simulating and verifying digital circuits

## Author

Harsha Vardhan Nalluri

## License

This project is available for educational and learning purposes.
