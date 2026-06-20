 # Asynchronous 2-Bit Bidirectional Counter Simulation using Verilog

## Overview

This project implements and simulates an Asynchronous 2-Bit Bidirectional Counter using Verilog HDL. A Bidirectional Counter is capable of counting in both upward and downward directions based on a control signal. In an Asynchronous (Ripple) Counter, only the first flip-flop receives the external clock signal, while subsequent flip-flops are triggered by the outputs of preceding stages. The design is verified using a testbench that applies clock pulses, reset conditions, and direction control inputs.

## Truth Table

### Up Count Mode (MODE = 1)

| Clock Pulse | Q1 | Q0 | Decimal Count |
| ----------- | -- | -- | ------------- |
| Reset       | 0  | 0  | 0             |
| 1           | 0  | 1  | 1             |
| 2           | 1  | 0  | 2             |
| 3           | 1  | 1  | 3             |
| 4           | 0  | 0  | 0             |

### Down Count Mode (MODE = 0)

| Clock Pulse | Q1 | Q0 | Decimal Count |
| ----------- | -- | -- | ------------- |
| Reset       | 1  | 1  | 3             |
| 1           | 1  | 0  | 2             |
| 2           | 0  | 1  | 1             |
| 3           | 0  | 0  | 0             |
| 4           | 1  | 1  | 3             |

## Design Description

The Asynchronous 2-Bit Bidirectional Counter counts upward or downward based on the mode control signal. The least significant bit toggles on every clock pulse, while the most significant bit changes according to the ripple effect and counting direction.

### Inputs

* CLK : Clock Input
* RST : Reset Input
* MODE : Direction Control (1 = Up Count, 0 = Down Count)

### Outputs

* Q1 : Most Significant Bit (MSB)
* Q0 : Least Significant Bit (LSB)

## Simulation

The testbench verifies the counter operation in both up-counting and down-counting modes by applying clock pulses and changing the mode signal.

### Expected Results

#### MODE = 1 (Up Counter)

RST=1 → Q1Q0 = 00

Clock Pulse 1 → Q1Q0 = 01

Clock Pulse 2 → Q1Q0 = 10

Clock Pulse 3 → Q1Q0 = 11

Clock Pulse 4 → Q1Q0 = 00

#### MODE = 0 (Down Counter)

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
* Understanding bidirectional counting
* Designing counters with mode control
* Writing Verilog for sequential circuits
* Creating testbenches
* Simulating and verifying digital circuits

## Author

Harsha Vardhan Nalluri

## License

This project is available for educational and learning purposes.
