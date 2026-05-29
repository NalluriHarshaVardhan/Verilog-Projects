# AND Gate Simulation using Verilog

## Overview
This project implements and simulates a 2-input AND gate using Verilog HDL. The design demonstrates the basic functionality of digital logic gates and verifies the output through a testbench.

## Truth Table

| A | B | Y = A & B |
|---|---|----------|
| 0 | 0 |    0     |
| 0 | 1 |    0     |
| 1 | 0 |    0     |
| 1 | 1 |    1     |

The AND gate performs a logical AND operation on two input signals.

### Inputs
- A : Input 1
- B : Input 2

### Output
- Y : AND output

## Simulation

The testbench applies all possible input combinations to verify the AND gate operation.

### Expected Output

A=0 B=0 → Y=0

A=0 B=1 → Y=0

A=1 B=0 → Y=0

A=1 B=1 → Y=1

## Tools Used

- Verilog HDL
- Xilinx Vivado
- GTKWave 

## Learning Outcomes

- Understanding basic logic gates
- Writing Verilog modules
- Creating testbenches
- Running simulations and analyzing waveforms

## Author

Harsha vardhan Nalluri

## License

This project is open-source and available for educational purposes.