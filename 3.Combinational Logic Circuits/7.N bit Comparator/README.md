# N-Bit Comparator Simulation using Verilog

## Overview

This project implements and simulates an N-Bit Comparator using Verilog HDL. A Comparator is a combinational logic circuit used to compare two N-bit binary numbers and determine whether one number is greater than, less than, or equal to the other. The design is verified using a testbench that applies various input combinations.

## Truth Table

Since the comparator can operate on any number of bits, a generalized truth table is shown below:

| A     | B | A > B | A = B | A < B |
| ----- | - | ----- | ----- | ----- |
| A > B | B | 1     | 0     | 0     |
| A = B | B | 0     | 1     | 0     |
| A < B | B | 0     | 0     | 1     |

### Example (4-Bit Comparator)

| A    | B    | A > B | A = B | A < B |
| ---- | ---- | ----- | ----- | ----- |
| 0101 | 0011 | 1     | 0     | 0     |
| 1010 | 1010 | 0     | 1     | 0     |
| 0010 | 0110 | 0     | 0     | 1     |

## Design Description

The N-Bit Comparator compares two N-bit binary numbers and generates outputs indicating whether the first number is greater than, equal to, or less than the second number.

### Inputs

* A[N-1:0] : First N-bit input number
* B[N-1:0] : Second N-bit input number

### Outputs

* Greater : High when A > B
* Equal : High when A = B
* Less : High when A < B

## Simulation

The testbench verifies the comparator operation by applying different values to the input operands and observing the comparison outputs.

### Expected Results

A > B → Greater = 1, Equal = 0, Less = 0

A = B → Greater = 0, Equal = 1, Less = 0

A < B → Greater = 0, Equal = 0, Less = 1

### Example Cases

A = 8'b00001010, B = 8'b00000101 → Greater = 1

A = 8'b00001111, B = 8'b00001111 → Equal = 1

A = 8'b00000011, B = 8'b00001001 → Less = 1

## Tools Used

* Verilog HDL
* Xilinx Vivado
* GTKWave 

## Learning Outcomes

* Understanding comparator operation
* Designing parameterized Verilog modules
* Comparing multi-bit binary numbers
* Creating testbenches
* Simulating and verifying digital circuits

## Author

Harsha Vardhan Nalluri

## License

This project is available for educational and learning purposes.
