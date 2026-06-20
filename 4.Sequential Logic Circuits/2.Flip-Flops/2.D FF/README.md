# D Flip-Flop Simulation using Verilog

## Overview

This project implements and simulates a D (Data) Flip-Flop using Verilog HDL. A D Flip-Flop is a clocked sequential circuit that stores one bit of data. The output takes the value of the Data input (D) at the active edge of the clock signal and retains that value until the next clock edge. The design is verified using a testbench that applies various input combinations.

## Truth Table

| D | Q(next) | Operation |
| - | ------- | --------- |
| 0 | 0       | Store 0   |
| 1 | 1       | Store 1   |

## Design Description

The D Flip-Flop captures the value present at the Data input on the active clock edge and stores it until the next triggering clock edge.

### Inputs

* D : Data Input
* CLK : Clock Input
* RST : Reset Input (optional)

### Outputs

* Q : Stored Output
* Q̅ : Complement of Stored Output

## Simulation

The testbench verifies the D Flip-Flop operation by applying different values of the Data input synchronized with the clock signal.

### Expected Results

D=0 at clock edge → Q=0

D=1 at clock edge → Q=1

D changes between clock edges → Q remains unchanged

RST=1 → Q=0 (Reset)

## Tools Used

* Verilog HDL
* Xilinx Vivado
* GTKWave (optional)

## Learning Outcomes

* Understanding D Flip-Flop operation
* Understanding edge-triggered sequential circuits
* Designing storage elements using Verilog
* Writing Verilog for sequential logic
* Creating testbenches
* Simulating and verifying digital circuits

## Author

Harsha Vardhan Nalluri

## License

This project is available for educational and learning purposes.
