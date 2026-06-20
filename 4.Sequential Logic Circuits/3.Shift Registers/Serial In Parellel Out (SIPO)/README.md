# Serial-In Parallel-Out (SIPO) Shift Register Simulation using Verilog

## Overview

This project implements and simulates a Serial-In Parallel-Out (SIPO) Shift Register using Verilog HDL. A SIPO Shift Register accepts data serially, one bit at a time, and makes the stored data available simultaneously at its parallel outputs. It is commonly used for serial-to-parallel data conversion in digital communication systems. The design is verified using a testbench that applies serial input data synchronized with the clock signal.

## Truth Table

### Example (4-Bit SIPO Shift Register)

| Clock Pulse | Serial Input (SI) | Q3 Q2 Q1 Q0 |
| ----------- | ----------------- | ----------- |
| Reset       | X                 | 0000        |
| 1           | 1                 | 0001        |
| 2           | 0                 | 0010        |
| 3           | 1                 | 0101        |
| 4           | 1                 | 1011        |

## Design Description

The SIPO Shift Register shifts incoming serial data into the register on each active clock edge. After N clock pulses, the complete data word becomes available at the parallel outputs.

### Inputs

* SI : Serial Data Input
* CLK : Clock Input
* RST : Reset Input

### Outputs

* Q[N-1:0] : Parallel Data Outputs

## Simulation

The testbench verifies the SIPO Shift Register operation by applying a sequence of serial input bits and observing the parallel outputs after each clock pulse.

### Expected Results

RST=1 → Q = 0000

SI=1 → Q = 0001

SI=0 → Q = 0010

SI=1 → Q = 0101

SI=1 → Q = 1011

## Tools Used

* Verilog HDL
* Xilinx Vivado
* GTKWave (optional)

## Learning Outcomes

* Understanding shift register operation
* Understanding serial-to-parallel data conversion
* Designing sequential circuits using Verilog
* Writing clocked logic circuits
* Creating testbenches
* Simulating and verifying digital circuits

## Author

Harsha Vardhan Nalluri

## License

This project is available for educational and learning purposes.
