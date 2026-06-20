# SR Flip-Flop Simulation using Verilog

## Overview

This project implements and simulates an SR (Set-Reset) Flip-Flop using Verilog HDL. An SR Flip-Flop is a clocked sequential circuit that stores one bit of information. The output changes only on the active edge of the clock signal based on the Set (S) and Reset (R) inputs. The design is verified using a testbench that applies various input combinations.

## Truth Table

| S | R | Q(next) | Operation     |
| - | - | ------- | ------------- |
| 0 | 0 | Q(prev) | No Change     |
| 0 | 1 | 0       | Reset         |
| 1 | 0 | 1       | Set           |
| 1 | 1 | Invalid | Invalid State |

## Design Description

The SR Flip-Flop stores one bit of data and updates its state on the triggering edge of the clock signal. The Set input forces the output to logic 1, while the Reset input forces the output to logic 0.

### Inputs

* S : Set Input
* R : Reset Input
* CLK : Clock Input

### Outputs

* Q : Stored Output
* Q̅ : Complement of Stored Output

## Simulation

The testbench verifies the SR Flip-Flop operation by applying Set, Reset, Hold, and Invalid input conditions synchronized with the clock signal.

### Expected Results

S=0, R=0 → Q retains previous value (No Change)

S=1, R=0 → Q=1, Q̅=0 (Set)

S=0, R=1 → Q=0, Q̅=1 (Reset)

S=1, R=1 → Invalid State

## Tools Used

* Verilog HDL
* Xilinx Vivado
* GTKWave (optional)

## Learning Outcomes

* Understanding flip-flop operation
* Understanding clocked sequential circuits
* Designing SR Flip-Flops using Verilog
* Creating testbenches
* Simulating and verifying digital circuits

## Author

Harsha Vardhan Nalluri

## License

This project is available for educational and learning purposes.
