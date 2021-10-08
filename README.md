# Single Cycle CPU
Design a single cycle CPU lite based on MIPS instruction set architecture. 

## Objective
The design that is implemented for this lap is to compute the formula below, which reads 6 numbers from the data set, computes the sum of the 6 x values from the provide data memory file and stores the output the result of the sum. The instructions needed to design this single cycle cpu are lw, sw, beq, add, sub, ori, or.

To design the single cycle cpu, we need the following units and they are also units shown in the data path above:
- [x] A ram with 3 port register file
- [x] A 5-bit and 32-bit 2:1 multiplexer
- [x] Program counter
- [x] Instruction memory
- [x] Instruction register
- [x] CPU control unit
- [x] ALU & ALU control
- [x] Sign extender

## Data Path Diagram
Based on the following data path diagram, the design is connected to form the single cycle cpu
![Alt text](screenshots/blockpath.png?raw=true " ")
