# Asynchronous 2-Bit Up Counter Simulation using Verilog

## Overview

This project implements and simulates an Asynchronous 2-Bit Up Counter using Verilog HDL. An Asynchronous Counter, also known as a Ripple Counter, is a sequential circuit in which the clock input is applied only to the first flip-flop, and subsequent flip-flops are triggered by the output of the previous stage. The counter increments its count value on each clock pulse. The design is verified using a testbench that applies clock pulses and reset conditions.

## Truth Table

| Clock Pulse | Q1 | Q0 | Decimal Count |
| ----------- | -- | -- | ------------- |
| Reset       | 0  | 0  | 0             |
| 1           | 0  | 1  | 1             |
| 2           | 1  | 0  | 2             |
| 3           | 1  | 1  | 3             |
| 4           | 0  | 0  | 0             |

## Design Description

The Asynchronous 2-Bit Up Counter consists of two flip-flops connected in ripple fashion. The least significant bit toggles with every clock pulse, while the most significant bit toggles based on the output transition of the previous flip-flop.

### Inputs

* CLK : Clock Input
* RST : Reset Input

### Outputs

* Q1 : Most Significant Bit (MSB)
* Q0 : Least Significant Bit (LSB)

## Simulation

The testbench verifies the counter operation by applying clock pulses and observing the count sequence.

### Expected Results

RST=1 → Q1Q0 = 00

Clock Pulse 1 → Q1Q0 = 01

Clock Pulse 2 → Q1Q0 = 10

Clock Pulse 3 → Q1Q0 = 11

Clock Pulse 4 → Q1Q0 = 00

## Tools Used

* Verilog HDL
* Xilinx Vivado
* GTKWave (optional)

## Learning Outcomes

* Understanding asynchronous (ripple) counters
* Understanding binary counting sequences
* Designing sequential circuits using flip-flops
* Writing Verilog for counters
* Creating testbenches
* Simulating and verifying digital circuits

## Author

Harsha Vardhan Nalluri

## License

This project is available for educational and learning purposes.
