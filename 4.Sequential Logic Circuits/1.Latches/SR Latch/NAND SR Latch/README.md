# NAND SR Latch Simulation using Verilog

## Overview

This project implements and simulates an SR (Set-Reset) Latch using NAND gates in Verilog HDL. The NAND SR Latch is a basic sequential circuit capable of storing one bit of information. It consists of two cross-coupled NAND gates and operates with active-low inputs (S̅ and R̅). The design is verified using a testbench that applies various input combinations.

## Truth Table

| S̅ | R̅ | Q(next) | Q̅(next) | Operation     |
| -- | -- | ------- | -------- | ------------- |
| 1  | 1  | Q(prev) | Q̅(prev) | Hold          |
| 0  | 1  | 1       | 0        | Set           |
| 1  | 0  | 0       | 1        | Reset         |
| 0  | 0  | 1       | 1        | Invalid State |

## Design Description

The NAND SR Latch stores one bit of data using feedback between two NAND gates. Since the inputs are active-low, a logic 0 activates the corresponding function.

### Inputs

* S̅ : Active-Low Set Input
* R̅ : Active-Low Reset Input

### Outputs

* Q : Stored output
* Q̅ : Complement of stored output

## Simulation

The testbench verifies the NAND SR Latch operation by applying Set, Reset, Hold, and Invalid input conditions.

### Expected Results

S̅=0, R̅=1 → Q=1, Q̅=0 (Set)

S̅=1, R̅=0 → Q=0, Q̅=1 (Reset)

S̅=1, R̅=1 → Previous State Retained (Hold)

S̅=0, R̅=0 → Q=1, Q̅=1 (Invalid State)

## Tools Used

* Verilog HDL
* Xilinx Vivado
* GTKWave (optional)

## Learning Outcomes

* Understanding latch operation
* Understanding active-low logic
* Designing sequential circuits using NAND gates
* Writing Verilog for feedback-based circuits
* Creating testbenches
* Simulating and verifying digital circuits

## Author

Harsha Vardhan Nalluri

## License

This project is available for educational and learning purposes.
