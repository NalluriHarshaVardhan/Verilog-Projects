# Asynchronous 4-Bit Bidirectional Counter Simulation using Verilog

## Overview

This project implements and simulates an Asynchronous 4-Bit Bidirectional Counter using Verilog HDL. A Bidirectional Counter is capable of counting in both upward and downward directions based on a control signal. In an Asynchronous (Ripple) Counter, only the first flip-flop receives the external clock signal, while subsequent flip-flops are triggered by the outputs of preceding stages. The design is verified using a testbench that applies clock pulses, reset conditions, and direction control inputs.

## Truth Table

### Up Count Mode (MODE = 1)

| Clock Pulse | Q3  | Q2  | Q1  | Q0  | Decimal Count |
| ----------- | --- | --- | --- | --- | ------------- |
| Reset       | 0   | 0   | 0   | 0   | 0             |
| 1           | 0   | 0   | 0   | 1   | 1             |
| 2           | 0   | 0   | 1   | 0   | 2             |
| 3           | 0   | 0   | 1   | 1   | 3             |
| 4           | 0   | 1   | 0   | 0   | 4             |
| ...         | ... | ... | ... | ... | ...           |
| 15          | 1   | 1   | 1   | 1   | 15            |
| 16          | 0   | 0   | 0   | 0   | 0             |

### Down Count Mode (MODE = 0)

| Clock Pulse | Q3  | Q2  | Q1  | Q0  | Decimal Count |
| ----------- | --- | --- | --- | --- | ------------- |
| Reset       | 1   | 1   | 1   | 1   | 15            |
| 1           | 1   | 1   | 1   | 0   | 14            |
| 2           | 1   | 1   | 0   | 1   | 13            |
| 3           | 1   | 1   | 0   | 0   | 12            |
| 4           | 1   | 0   | 1   | 1   | 11            |
| ...         | ... | ... | ... | ... | ...           |
| 15          | 0   | 0   | 0   | 0   | 0             |
| 16          | 1   | 1   | 1   | 1   | 15            |

## Design Description

The Asynchronous 4-Bit Bidirectional Counter counts upward or downward based on the mode control signal. The least significant bit toggles on every clock pulse, while higher-order bits change according to the ripple effect and counting direction.

### Inputs

* CLK : Clock Input
* RST : Reset Input
* MODE : Direction Control (1 = Up Count, 0 = Down Count)

### Outputs

* Q3 : Most Significant Bit (MSB)
* Q2 : Counter Output Bit
* Q1 : Counter Output Bit
* Q0 : Least Significant Bit (LSB)

## Simulation

The testbench verifies the counter operation in both up-counting and down-counting modes by applying clock pulses and changing the mode signal.

### Expected Results

#### MODE = 1 (Up Counter)

RST=1 → Q3Q2Q1Q0 = 0000

Clock Pulse 1 → Q3Q2Q1Q0 = 0001

Clock Pulse 2 → Q3Q2Q1Q0 = 0010

Clock Pulse 3 → Q3Q2Q1Q0 = 0011

...

Clock Pulse 15 → Q3Q2Q1Q0 = 1111

Clock Pulse 16 → Q3Q2Q1Q0 = 0000

#### MODE = 0 (Down Counter)

RST=1 → Q3Q2Q1Q0 = 1111

Clock Pulse 1 → Q3Q2Q1Q0 = 1110

Clock Pulse 2 → Q3Q2Q1Q0 = 1101

Clock Pulse 3 → Q3Q2Q1Q0 = 1100

...

Clock Pulse 15 → Q3Q2Q1Q0 = 0000

Clock Pulse 16 → Q3Q2Q1Q0 = 1111

## Tools Used

* Verilog HDL
* Xilinx Vivado
* GTKWave (optional)

## Learning Outcomes

* Understanding asynchronous (ripple) counters
* Understanding bidirectional counting
* Designing counters with mode control
* Writing Verilog for sequential circuits
* Creating testbenches
* Simulating and verifying digital circuits

## Author

Harsha Vardhan Nalluri

## License

This project is available for educational and learning purposes.
