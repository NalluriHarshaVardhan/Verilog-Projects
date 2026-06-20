# Asynchronous 2-Bit Down Counter Simulation using Verilog

## Overview

This project implements and simulates an Asynchronous 2-Bit Down Counter using Verilog HDL. An Asynchronous Counter, also known as a Ripple Counter, is a sequential circuit in which only the first flip-flop receives the external clock signal. In a Down Counter, the count value decreases with each clock pulse. The design is verified using a testbench that applies clock pulses and reset conditions.

## Truth Table

| Clock Pulse | Q1 | Q0 | Decimal Count |
| ----------- | -- | -- | ------------- |
| Reset       | 1  | 1  | 3             |
| 1           | 1  | 0  | 2             |
| 2           | 0  | 1  | 1             |
| 3           | 0  | 0  | 0             |
| 4           | 1  | 1  | 3             |

## Design Description

The Asynchronous 2-Bit Down Counter consists of two flip-flops connected in ripple fashion. The counter decrements its binary count on each clock pulse and wraps around after reaching zero.

### Inputs

* CLK : Clock Input
* RST : Reset Input

### Outputs

* Q1 : Most Significant Bit (MSB)
* Q0 : Least Significant Bit (LSB)

## Simulation

The testbench verifies the counter operation by applying clock pulses and observing the down-count sequence.

### Expected Results

RST=1 → Q1Q0 = 11

Clock Pulse 1 → Q1Q0 = 10

Clock Pulse 2 → Q1Q0 = 01

Clock Pulse 3 → Q1Q0 = 00

Clock Pulse 4 → Q1Q0 = 11

## Tools Used

* Verilog HDL
* Xilinx Vivado
* GTKWave (optional)

## Learning Outcomes

* Understanding asynchronous (ripple) counters
* Understanding binary down-counting sequences
* Designing sequential circuits using flip-flops
* Writing Verilog for counters
* Creating testbenches
* Simulating and verifying digital circuits

## Author

Harsha Vardhan Nalluri

## License

This project is available for educational and learning purposes.
