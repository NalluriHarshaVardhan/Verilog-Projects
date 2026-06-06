# 3-to-8 Decoder Simulation using Verilog

## Overview

This project implements and simulates a 3-to-8 Decoder using Verilog HDL. A 3-to-8 Decoder is a combinational logic circuit that converts a 3-bit binary input into one of eight unique output lines. Only one output is active at a time corresponding to the input combination. The design is verified using a testbench that applies all possible input combinations.

## Truth Table

| A | B | C | Y0 | Y1 | Y2 | Y3 | Y4 | Y5 | Y6 | Y7 |
| - | - | - | -- | -- | -- | -- | -- | -- | -- | -- |
| 0 | 0 | 0 | 1  | 0  | 0  | 0  | 0  | 0  | 0  | 0  |
| 0 | 0 | 1 | 0  | 1  | 0  | 0  | 0  | 0  | 0  | 0  |
| 0 | 1 | 0 | 0  | 0  | 1  | 0  | 0  | 0  | 0  | 0  |
| 0 | 1 | 1 | 0  | 0  | 0  | 1  | 0  | 0  | 0  | 0  |
| 1 | 0 | 0 | 0  | 0  | 0  | 0  | 1  | 0  | 0  | 0  |
| 1 | 0 | 1 | 0  | 0  | 0  | 0  | 0  | 1  | 0  | 0  |
| 1 | 1 | 0 | 0  | 0  | 0  | 0  | 0  | 0  | 1  | 0  |
| 1 | 1 | 1 | 0  | 0  | 0  | 0  | 0  | 0  | 0  | 1  |

## Design Description

The 3-to-8 Decoder decodes a 3-bit binary input and activates exactly one of the eight output lines corresponding to the input value.

### Inputs

* A : Most Significant Bit (MSB)
* B : Middle input bit
* C : Least Significant Bit (LSB)

### Outputs

* Y0 : Active for input 000
* Y1 : Active for input 001
* Y2 : Active for input 010
* Y3 : Active for input 011
* Y4 : Active for input 100
* Y5 : Active for input 101
* Y6 : Active for input 110
* Y7 : Active for input 111

## Simulation

The testbench verifies the 3-to-8 Decoder operation by applying all possible input combinations.

### Expected Results

ABC=000 → Y0=1

ABC=001 → Y1=1

ABC=010 → Y2=1

ABC=011 → Y3=1

ABC=100 → Y4=1

ABC=101 → Y5=1

ABC=110 → Y6=1

ABC=111 → Y7=1

## Tools Used

* Verilog HDL
* Xilinx Vivado
* GTKWave (optional)

## Learning Outcomes

* Understanding decoder operation
* Designing combinational logic circuits
* Writing Verilog modules for decoders
* Creating testbenches
* Simulating and verifying digital circuits

## Author

Harsha Vardhan Nalluri

## License

This project is available for educational and learning purposes.
