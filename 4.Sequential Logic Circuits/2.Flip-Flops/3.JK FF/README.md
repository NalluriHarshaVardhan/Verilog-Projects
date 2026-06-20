# JK Flip-Flop Simulation using Verilog

## Overview

This project implements and simulates a JK Flip-Flop using Verilog HDL. A JK Flip-Flop is a clocked sequential circuit that eliminates the invalid state of the SR Flip-Flop. Depending on the values of inputs J and K, the flip-flop can hold, set, reset, or toggle its output state. The design is verified using a testbench that applies various input combinations.

## Truth Table

| J | K | Q(next)  | Operation |
| - | - | -------- | --------- |
| 0 | 0 | Q(prev)  | No Change |
| 0 | 1 | 0        | Reset     |
| 1 | 0 | 1        | Set       |
| 1 | 1 | Q̅(prev) | Toggle    |

## Design Description

The JK Flip-Flop stores one bit of data and updates its state on the active edge of the clock signal. It behaves similarly to an SR Flip-Flop but provides a toggle operation when both inputs are high.

### Inputs

* J : Set Input
* K : Reset Input
* CLK : Clock Input
* RST : Reset Input (optional)

### Outputs

* Q : Stored Output
* Q̅ : Complement of Stored Output

## Simulation

The testbench verifies the JK Flip-Flop operation by applying different combinations of J and K inputs synchronized with the clock signal.

### Expected Results

J=0, K=0 → Q retains previous value (No Change)

J=0, K=1 → Q=0, Q̅=1 (Reset)

J=1, K=0 → Q=1, Q̅=0 (Set)

J=1, K=1 → Q toggles on every clock edge

RST=1 → Q=0 (Reset)

## Tools Used

* Verilog HDL
* Xilinx Vivado
* GTKWave (optional)

## Learning Outcomes

* Understanding JK Flip-Flop operation
* Understanding clocked sequential circuits
* Learning toggle functionality in flip-flops
* Writing Verilog for sequential logic
* Creating testbenches
* Simulating and verifying digital circuits

## Author

Harsha Vardhan Nalluri

## License

This project is available for educational and learning purposes.
