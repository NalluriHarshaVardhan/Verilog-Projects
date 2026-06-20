# Asynchronous 4-Bit Down Counter Simulation using Verilog

## Overview

This project implements and simulates an Asynchronous 4-Bit Down Counter using Verilog HDL. An Asynchronous Counter, also known as a Ripple Counter, is a sequential circuit in which only the first flip-flop receives the external clock signal. In a Down Counter, the count value decreases with each clock pulse. The design is verified using a testbench that applies clock pulses and reset conditions.

## Truth Table

| Clock Pulse | Q3  | Q2  | Q1  | Q0  | Decimal Count |
| ----------- | --- | --- | --- | --- | ------------- |
| Reset       | 1   | 1   | 1   | 1   | 15            |
| 1           | 1   | 1   | 1   | 0   | 14            |
| 2           | 1   | 1   | 0   | 1   | 13            |
| 3           | 1   | 1   | 0   | 0   | 12            |
| 4           | 1   | 0   | 1   | 1   | 11            |
| 5           | 1   | 0   | 1   | 0   | 10            |
| 6           | 1   | 0   | 0   | 1   | 9             |
| 7           | 1   | 0   | 0   | 0   | 8             |
| 8           | 0   | 1   | 1   | 1   | 7             |
| ...         | ... | ... | ... | ... | ...           |
| 15          | 0   | 0   | 0   | 0   | 0             |
| 16          | 1   | 1   | 1   | 1   | 15            |

## Design Description

The Asynchronous 4-Bit Down Counter consists of four flip-flops connected in ripple fashion. The counter decrements its binary count on each clock pulse and wraps around after reaching zero.

### Inputs

* CLK : Clock Input
* RST : Reset Input

### Outputs

* Q3 : Most Significant Bit (MSB)
* Q2 : Counter Output Bit
* Q1 : Counter Output Bit
* Q0 : Least Significant Bit (LSB)

## Simulation

The testbench verifies the counter operation by applying clock pulses and observing the binary down-count sequence from 1111 to 0000.

### Expected Results

RST=1 → Q3Q2Q1Q0 = 1111

Clock Pulse 1 → Q3Q2Q1Q0 = 1110

Clock Pulse 2 → Q3Q2Q1Q0 = 1101

Clock Pulse 3 → Q3Q2Q1Q0 = 1100

Clock Pulse 4 → Q3Q2Q1Q0 = 1011

...

Clock Pulse 15 → Q3Q2Q1Q0 = 0000

Clock Pulse 16 → Q3Q2Q1Q0 = 1111

## Tools Used

* Verilog HDL
* Xilinx Vivado
* GTKWave (optional)

## Learning Outcomes

* Understanding asynchronous (ripple) counters
* Understanding multi-bit binary down-counting
* Designing sequential circuits using flip-flops
* Writing Verilog for counters
* Creating testbenches
* Simulating and verifying digital circuits

## Author

Harsha Vardhan Nalluri

## License

This project is available for educational and learning purposes.
