# 4-Bit Binary to Gray Code Converter Simulation using Verilog

## Overview

This project implements and simulates a 4-Bit Binary to Gray Code Converter using Verilog HDL. A Gray Code Converter transforms a binary number into its equivalent Gray code representation, where consecutive values differ by only one bit. The design is verified using a testbench that applies all possible 4-bit binary input combinations.

## Truth Table

| Binary (B3 B2 B1 B0) | Gray Code (G3 G2 G1 G0) |
| -------------------- | ----------------------- |
| 0000                 | 0000                    |
| 0001                 | 0001                    |
| 0010                 | 0011                    |
| 0011                 | 0010                    |
| 0100                 | 0110                    |
| 0101                 | 0111                    |
| 0110                 | 0101                    |
| 0111                 | 0100                    |
| 1000                 | 1100                    |
| 1001                 | 1101                    |
| 1010                 | 1111                    |
| 1011                 | 1110                    |
| 1100                 | 1010                    |
| 1101                 | 1011                    |
| 1110                 | 1001                    |
| 1111                 | 1000                    |

## Design Description

The 4-Bit Binary to Gray Code Converter converts a 4-bit binary input into its corresponding Gray code output using XOR operations.

### Inputs

* B3 : Most Significant Bit (MSB)
* B2 : Binary input bit
* B1 : Binary input bit
* B0 : Least Significant Bit (LSB)

### Outputs

* G3 : Most Significant Gray bit
* G2 : Gray output bit
* G1 : Gray output bit
* G0 : Least Significant Gray bit

## Simulation

The testbench verifies the Binary to Gray Code Converter operation by applying different 4-bit binary input values and observing the generated Gray code outputs.

### Expected Results

0000 → 0000

0001 → 0001

0010 → 0011

0011 → 0010

0100 → 0110

0101 → 0111

0110 → 0101

0111 → 0100

1000 → 1100

1001 → 1101

1010 → 1111

1011 → 1110

1100 → 1010

1101 → 1011

1110 → 1001

1111 → 1000

## Tools Used

* Verilog HDL
* Xilinx Vivado
* GTKWave (optional)

## Learning Outcomes

* Understanding Gray code representation
* Learning Binary-to-Gray code conversion techniques
* Writing combinational logic in Verilog
* Creating testbenches
* Simulating and verifying digital circuits

## Author

Harsha Vardhan Nalluri

## License

This project is available for educational and learning purposes.
