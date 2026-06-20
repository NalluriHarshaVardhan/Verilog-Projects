# Parallel-In Serial-Out (PISO) Shift Register Simulation using Verilog

## Overview

This project implements and simulates a Parallel-In Serial-Out (PISO) Shift Register using Verilog HDL. A PISO Shift Register loads multiple bits of data simultaneously and shifts them out one bit at a time through a serial output. It is commonly used for parallel-to-serial data conversion in digital communication systems. The design is verified using a testbench that applies various parallel input combinations and clock pulses.

## Truth Table

### Example (4-Bit PISO Shift Register)

| Operation | Parallel Input (D3 D2 D1 D0) | Serial Output (SO) |
| --------- | ---------------------------- | ------------------ |
| Load      | 1011                         | X                  |
| Shift 1   | XXXX                         | 1                  |
| Shift 2   | XXXX                         | 0                  |
| Shift 3   | XXXX                         | 1                  |
| Shift 4   | XXXX                         | 1                  |

## Design Description

The PISO Shift Register loads all input bits simultaneously when the Load signal is active. After loading, the data is shifted out serially on each active clock edge.

### Inputs

* D[N-1:0] : Parallel Data Inputs
* CLK : Clock Input
* RST : Reset Input
* LOAD : Load Control Signal

### Outputs

* SO : Serial Data Output

## Simulation

The testbench verifies the PISO Shift Register operation by loading parallel data into the register and then shifting it out serially through the output.

### Expected Results

RST=1 → Register cleared

LOAD=1, D=1011 → Data loaded into register

LOAD=0, Clock Pulse 1 → SO=1

Clock Pulse 2 → SO=0

Clock Pulse 3 → SO=1

Clock Pulse 4 → SO=1

## Tools Used

* Verilog HDL
* Xilinx Vivado
* GTKWave (optional)

## Learning Outcomes

* Understanding shift register operation
* Understanding parallel-to-serial data conversion
* Designing sequential circuits using Verilog
* Writing clocked logic circuits
* Creating testbenches
* Simulating and verifying digital circuits

## Author

Harsha Vardhan Nalluri

## License

This project is available for educational and learning purposes.
