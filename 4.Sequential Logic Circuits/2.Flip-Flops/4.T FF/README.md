# T Flip-Flop Simulation using Verilog

## Overview

This project implements and simulates a T (Toggle) Flip-Flop using Verilog HDL. A T Flip-Flop is a clocked sequential circuit that changes its output state whenever the Toggle (T) input is high during the active clock edge. When the Toggle input is low, the output retains its previous state. The design is verified using a testbench that applies various input combinations.

## Truth Table

| T | Q(next)  | Operation |
| - | -------- | --------- |
| 0 | Q(prev)  | No Change |
| 1 | Q̅(prev) | Toggle    |

## Design Description

The T Flip-Flop stores one bit of data and updates its state on the active edge of the clock signal. When T is high, the output toggles between 0 and 1. When T is low, the output remains unchanged.

### Inputs

* T : Toggle Input
* CLK : Clock Input
* RST : Reset Input (optional)

### Outputs

* Q : Stored Output
* Q̅ : Complement of Stored Output

## Simulation

The testbench verifies the T Flip-Flop operation by applying different values of the Toggle input synchronized with the clock signal.

### Expected Results

T=0 → Q retains previous value (No Change)

T=1, Q=0 → Q=1 (Toggle)

T=1, Q=1 → Q=0 (Toggle)

RST=1 → Q=0 (Reset)

## Tools Used

* Verilog HDL
* Xilinx Vivado
* GTKWave (optional)

## Learning Outcomes

* Understanding T Flip-Flop operation
* Understanding clocked sequential circuits
* Designing toggle-based storage elements
* Writing Verilog for sequential logic
* Creating testbenches
* Simulating and verifying digital circuits

## Author

Harsha Vardhan Nalluri

## License

This project is available for educational and learning purposes.
