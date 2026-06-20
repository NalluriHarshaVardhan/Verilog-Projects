# Serial-In Serial-Out (SISO) Shift Register Simulation using Verilog

## Overview

This project implements and simulates a Serial-In Serial-Out (SISO) Shift Register using Verilog HDL. A SISO Shift Register accepts data serially at the input and shifts it through a series of flip-flops. The data is also retrieved serially from the output after a certain number of clock pulses. It is commonly used for temporary data storage and serial data transfer applications. The design is verified using a testbench that applies serial input data synchronized with the clock signal.

## Truth Table

### Example (4-Bit SISO Shift Register)

| Clock Pulse | Serial Input (SI) | Register Content (Q3 Q2 Q1 Q0) | Serial Output (SO) |
| ----------- | ----------------- | ------------------------------ | ------------------ |
| Reset       | X                 | 0000                           | 0                  |
| 1           | 1                 | 0001                           | 0                  |
| 2           | 0                 | 0010                           | 0                  |
| 3           | 1                 | 0101                           | 0                  |
| 4           | 1                 | 1011                           | 1                  |

## Design Description

The SISO Shift Register shifts serial input data through the register on every active clock edge. After N clock pulses, the first input bit appears at the serial output.

### Inputs

* SI : Serial Data Input
* CLK : Clock Input
* RST : Reset Input

### Outputs

* SO : Serial Data Output

## Simulation

The testbench verifies the SISO Shift Register operation by applying a sequence of serial input bits and observing the serial output after each clock pulse.

### Expected Results

RST=1 → Register cleared

SI=1 → Data enters first stage

Subsequent clock pulses shift data through the register

After N clock pulses, the first input bit appears at SO

Example Input Sequence: 1, 0, 1, 1

Output after 4 clock pulses: SO = 1

## Tools Used

* Verilog HDL
* Xilinx Vivado
* GTKWave (optional)

## Learning Outcomes

* Understanding shift register operation
* Understanding serial-to-serial data transfer
* Designing sequential circuits using Verilog
* Writing clocked logic circuits
* Creating testbenches
* Simulating and verifying digital circuits

## Author

Harsha Vardhan Nalluri

## License

This project is available for educational and learning purposes.
