# Parallel-In Parallel-Out (PIPO) Shift Register Simulation using Verilog

## Overview

This project implements and simulates a Parallel-In Parallel-Out (PIPO) Shift Register using Verilog HDL. A PIPO Shift Register loads multiple bits of data simultaneously and makes them available at the output simultaneously after a clock pulse. It is commonly used for temporary data storage and parallel data transfer in digital systems. The design is verified using a testbench that applies various parallel input combinations.

## Truth Table

### Example (4-Bit PIPO Shift Register)

| Clock Edge | Parallel Input (D3 D2 D1 D0) | Parallel Output (Q3 Q2 Q1 Q0) |
| ---------- | ---------------------------- | ----------------------------- |
| Reset      | XXXX                         | 0000                          |
| ↑          | 1010                         | 1010                          |
| ↑          | 1101                         | 1101                          |
| ↑          | 0111                         | 0111                          |

## Design Description

The PIPO Shift Register loads all input bits simultaneously on the active clock edge and transfers them directly to the outputs.

### Inputs

* D[N-1:0] : Parallel Data Inputs
* CLK : Clock Input
* RST : Reset Input

### Outputs

* Q[N-1:0] : Parallel Data Outputs

## Simulation

The testbench verifies the PIPO Shift Register operation by applying different parallel input values and observing the corresponding outputs after each clock pulse.

### Expected Results

RST=1 → Q = 0000

D = 1010, Clock Edge → Q = 1010

D = 1101, Clock Edge → Q = 1101

D = 0111, Clock Edge → Q = 0111

## Tools Used

* Verilog HDL
* Xilinx Vivado
* GTKWave (optional)

## Learning Outcomes

* Understanding shift register operation
* Understanding parallel data loading and transfer
* Designing sequential circuits using Verilog
* Writing clocked logic circuits
* Creating testbenches
* Simulating and verifying digital circuits

## Author

Harsha Vardhan Nalluri

## License

This project is available for educational and learning purposes.
