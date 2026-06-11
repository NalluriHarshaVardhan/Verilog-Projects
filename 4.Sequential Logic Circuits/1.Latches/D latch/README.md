# D Latch Simulation using Verilog

## Overview

This project implements and simulates a D (Data) Latch using Verilog HDL. A D Latch is a level-sensitive sequential circuit that stores one bit of data. The output follows the input when the Enable signal is active and retains its previous state when the Enable signal is inactive. The design is verified using a testbench that applies various input and enable combinations.

## Truth Table

| Enable (E) | D | Q(next) | Operation |
| ---------- | - | ------- | --------- |
| 0          | X | Q(prev) | Hold      |
| 1          | 0 | 0       | Store 0   |
| 1          | 1 | 1       | Store 1   |

## Design Description

The D Latch stores the value present at the Data input when the Enable signal is high. When the Enable signal is low, the latch retains its previous state.

### Inputs

* D : Data Input
* E : Enable Input

### Outputs

* Q : Stored Output
* Q̅ : Complement of Stored Output

## Simulation

The testbench verifies the D Latch operation by applying different combinations of Data and Enable signals.

### Expected Results

E=0, D=X → Q retains previous value (Hold)

E=1, D=0 → Q=0, Q̅=1

E=1, D=1 → Q=1, Q̅=0

## Tools Used

* Verilog HDL
* Xilinx Vivado
* GTKWave (optional)

## Learning Outcomes

* Understanding latch operation
* Understanding level-sensitive storage elements
* Designing sequential circuits using Verilog
* Creating testbenches
* Simulating and verifying digital circuits

## Author

Harsha Vardhan Nalluri

## License

This project is available for educational and learning purposes.
