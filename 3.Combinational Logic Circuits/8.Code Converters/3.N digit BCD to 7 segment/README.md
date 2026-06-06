# BCD to 7-Segment Display Converter Simulation using Verilog

## Overview

This project implements and simulates a BCD to 7-Segment Display Converter using Verilog HDL. The converter accepts a 4-bit Binary Coded Decimal (BCD) input and generates the corresponding outputs required to drive a 7-segment display. The design is verified using a testbench that applies all valid BCD input combinations (0–9).

## Truth Table

| BCD Input (DCBA) | Decimal | a | b | c | d | e | f | g |
| ---------------- | ------- | - | - | - | - | - | - | - |
| 0000             | 0       | 1 | 1 | 1 | 1 | 1 | 1 | 0 |
| 0001             | 1       | 0 | 1 | 1 | 0 | 0 | 0 | 0 |
| 0010             | 2       | 1 | 1 | 0 | 1 | 1 | 0 | 1 |
| 0011             | 3       | 1 | 1 | 1 | 1 | 0 | 0 | 1 |
| 0100             | 4       | 0 | 1 | 1 | 0 | 0 | 1 | 1 |
| 0101             | 5       | 1 | 0 | 1 | 1 | 0 | 1 | 1 |
| 0110             | 6       | 1 | 0 | 1 | 1 | 1 | 1 | 1 |
| 0111             | 7       | 1 | 1 | 1 | 0 | 0 | 0 | 0 |
| 1000             | 8       | 1 | 1 | 1 | 1 | 1 | 1 | 1 |
| 1001             | 9       | 1 | 1 | 1 | 1 | 0 | 1 | 1 |

## Design Description

The BCD to 7-Segment Display Converter decodes a 4-bit BCD input into seven output signals that control the segments of a 7-segment display.

### Inputs

* D : Most Significant BCD Bit
* C : BCD input bit
* B : BCD input bit
* A : Least Significant BCD Bit

### Outputs

* a : Top segment
* b : Top-right segment
* c : Bottom-right segment
* d : Bottom segment
* e : Bottom-left segment
* f : Top-left segment
* g : Middle segment

## Simulation

The testbench verifies the BCD to 7-Segment Display Converter operation by applying all valid BCD inputs from 0 to 9 and observing the segment outputs.

### Expected Results

BCD = 0000 → Display = 0

BCD = 0001 → Display = 1

BCD = 0010 → Display = 2

BCD = 0011 → Display = 3

BCD = 0100 → Display = 4

BCD = 0101 → Display = 5

BCD = 0110 → Display = 6

BCD = 0111 → Display = 7

BCD = 1000 → Display = 8

BCD = 1001 → Display = 9

## Tools Used

* Verilog HDL
* Xilinx Vivado
* GTKWave (optional)

## Learning Outcomes

* Understanding BCD representation
* Understanding 7-segment display interfacing
* Designing combinational decoder circuits
* Writing Verilog modules using case statements
* Creating testbenches
* Simulating and verifying digital circuits

## Author

Harsha Vardhan Nalluri

## License

This project is available for educational and learning purposes.
