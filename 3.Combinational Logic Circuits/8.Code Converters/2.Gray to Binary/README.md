# 4-Bit Gray to Binary Converter Simulation using Verilog

## Overview

This project implements and simulates a 4-Bit Gray to Binary Converter using Verilog HDL. A Gray to Binary Converter transforms a Gray code number into its equivalent binary representation. Gray code is widely used in digital systems because consecutive values differ by only one bit, reducing transition errors. The design is verified using a testbench that applies all possible 4-bit Gray code input combinations.

## Truth Table

| Gray Code (G3 G2 G1 G0) | Binary (B3 B2 B1 B0) |
| ----------------------- | -------------------- |
| 0000                    | 0000                 |
| 0001                    | 0001                 |
| 0011                    | 0010                 |
| 0010                    | 0011                 |
| 0110                    | 0100                 |
| 0111                    | 0101                 |
| 0101                    | 0110                 |
| 0100                    | 0111                 |
| 1100                    | 1000                 |
| 1101                    | 1001                 |
| 1111                    | 1010                 |
| 1110                    | 1011                 |
| 1010                    | 1100                 |
| 1011                    | 1101                 |
| 1001                    | 1110                 |
| 1000                    | 1111                 |

## Design Description

The 4-Bit Gray to Binary Converter converts a 4-bit Gray code input into its corresponding binary output using XOR operations.

### Inputs

* G3 : Most Significant Gray Bit (MSB)
* G2 : Gray input bit
* G1 : Gray input bit
* G0 : Least Significant Gray Bit (LSB)

### Outputs

* B3 : Most Significant Binary Bit
* B2 : Binary output bit
* B1 : Binary output bit
* B0 : Least Significant Binary Bit

## Simulation

The testbench verifies the Gray to Binary Converter operation by applying different 4-bit Gray code input values and observing the generated binary outputs.

### Expected Results

0000 → 0000

0001 → 0001

0011 → 0010

0010 → 0011

0110 → 0100

0111 → 0101

0101 → 0110

0100 → 0111

1100 → 1000

1101 → 1001

1111 → 1010

1110 → 1011

1010 → 1100

1011 → 1101

1001 → 1110

1000 → 1111

## Tools Used

* Verilog HDL
* Xilinx Vivado
* GTKWave 

## Learning Outcomes

* Understanding Gray code representation
* Learning Gray-to-Binary conversion techniques
* Writing combinational logic in Verilog
* Creating testbenches
* Simulating and verifying digital circuits

## Author

Harsha Vardhan Nalluri

## License

This project is available for educational and learning purposes.
