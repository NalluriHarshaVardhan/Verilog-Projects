# BCD to Excess-3 Code Converter Simulation using Verilog

## Overview

This project implements and simulates a BCD to Excess-3 Code Converter using Verilog HDL. An Excess-3 code is a non-weighted binary code obtained by adding 3 (0011) to the corresponding BCD number. The converter accepts a 4-bit BCD input and generates its equivalent 4-bit Excess-3 code output. The design is verified using a testbench that applies all valid BCD input combinations (0–9).

## Truth Table

| BCD Input | Decimal | Excess-3 Output |
| --------- | ------- | --------------- |
| 0000      | 0       | 0011            |
| 0001      | 1       | 0100            |
| 0010      | 2       | 0101            |
| 0011      | 3       | 0110            |
| 0100      | 4       | 0111            |
| 0101      | 5       | 1000            |
| 0110      | 6       | 1001            |
| 0111      | 7       | 1010            |
| 1000      | 8       | 1011            |
| 1001      | 9       | 1100            |

## Design Description

The BCD to Excess-3 Converter adds the binary value 3 (0011) to a valid BCD input and generates the corresponding Excess-3 code.

### Inputs

* D : Most Significant BCD Bit
* C : BCD input bit
* B : BCD input bit
* A : Least Significant BCD Bit

### Outputs

* E3 : Most Significant Excess-3 Bit
* E2 : Excess-3 output bit
* E1 : Excess-3 output bit
* E0 : Least Significant Excess-3 Bit

## Simulation

The testbench verifies the BCD to Excess-3 Converter operation by applying all valid BCD inputs from 0 to 9 and observing the corresponding Excess-3 outputs.

### Expected Results

BCD = 0000 → Excess-3 = 0011

BCD = 0001 → Excess-3 = 0100

BCD = 0010 → Excess-3 = 0101

BCD = 0011 → Excess-3 = 0110

BCD = 0100 → Excess-3 = 0111

BCD = 0101 → Excess-3 = 1000

BCD = 0110 → Excess-3 = 1001

BCD = 0111 → Excess-3 = 1010

BCD = 1000 → Excess-3 = 1011

BCD = 1001 → Excess-3 = 1100

## Tools Used

* Verilog HDL
* Xilinx Vivado
* GTKWave (optional)

## Learning Outcomes

* Understanding BCD representation
* Understanding Excess-3 coding
* Designing combinational code converters
* Writing Verilog modules using case statements
* Creating testbenches
* Simulating and verifying digital circuits

## Author

Harsha Vardhan Nalluri

## License

This project is available for educational and learning purposes.
