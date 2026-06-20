# Asynchronous 4-Bit Up Counter Simulation using Verilog

## Overview

This project implements and simulates an Asynchronous 4-Bit Up Counter using Verilog HDL. An Asynchronous Counter, also known as a Ripple Counter, is a sequential circuit in which only the first flip-flop receives the external clock signal. The output of each flip-flop serves as the clock input for the next flip-flop. The counter increments its binary count on each clock pulse. The design is verified using a testbench that applies clock pulses and reset conditions.

## Truth Table

| Clock Pulse | Q3  | Q2  | Q1  | Q0  | Decimal Count |
| ----------- | --- | --- | --- | --- | ------------- |
| Reset       | 0   | 0   | 0   | 0   | 0             |
| 1           | 0   | 0   | 0   | 1   | 1             |
| 2           | 0   | 0   | 1   | 0   | 2             |
| 3           | 0   | 0   | 1   | 1   | 3             |
| 4           | 0   | 1   | 0   | 0   | 4             |
| 5           | 0   | 1   | 0   | 1   | 5             |
| 6           | 0   | 1   | 1   | 0   | 6             |
| 7           | 0   | 1   | 1   | 1   | 7             |
| 8           | 1   | 0   | 0   | 0   | 8             |
| ...         | ... | ... | ... | ... | ...           |
| 15          | 1   | 1   | 1   | 1   | 15            |
| 16          | 0   | 0   | 0   | 0   | 0             |

## Design Description

The Asynchronous 4-Bit Up Counter consists of four flip-flops connected in ripple fashion. The least significant bit toggles with every clock pulse, while higher-order bits toggle based on the transitions of the preceding flip-flops.

### Inputs

* CLK : Clock Input
* RST : Reset Input

### Outputs

* Q3 : Most Significant Bit (MSB)
* Q2 : Counter Output Bit
* Q1 : Counter Output Bit
* Q0 : Least Significant Bit (LSB)

## Simulation

The testbench verifies the counter operation by applying clock pulses and observing the binary count sequence from 0000 to 1111.

### Expected Results

RST=1 → Q3Q2Q1Q0 = 0000

Clock Pulse 1 → Q3Q2Q1Q0 = 0001

Clock Pulse 2 → Q3Q2Q1Q0 = 0010

Clock Pulse 3 → Q3Q2Q1Q0 = 0011

Clock Pulse 4 → Q3Q2Q1Q0 = 0100

...

Clock Pulse 15 → Q3Q2Q1Q0 = 1111

Clock Pulse 16 → Q3Q2Q1Q0 = 0000

## Tools Used

* Verilog HDL
* Xilinx Vivado
* GTKWave (optional)

## Learning Outcomes

* Understanding asynchronous (ripple) counters
* Understanding multi-bit binary counting
* Designing sequential circuits using flip-flops
* Writing Verilog for counters
* Creating testbenches
* Simulating and verifying digital circuits

## Author

Harsha Vardhan Nalluri

## License

This project is available for educational and learning purposes.
