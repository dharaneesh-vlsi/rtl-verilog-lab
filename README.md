# RTL Lab – Verilog / VLSI Practice Repository

## Overview

---

## Tools & Technologies
- Verilog HDL
- Icarus Ve
rilog (iverilog)
- GTKWave
- Ubuntu Linux
- Git & GitHub

---

## Repository Structure

rtl_lab/
 ├── adders/
 ├── comparator/
 ├── gates/
 ├── half_adder/
 ├── rca/
 ├── alu/
 ├── mul_div/
 ├── tb/
 ├── wave/
 ├── .gitignore
 └── README.md

---

## Implemented Modules

### Arithmetic Circuits
- Half Adder
- Full Adder
- Ripple Carry Adder
- Subtractor
- Multiplier
  - 2-bit
  - 4-bit
  - Shift-and-Add (Sequential)
- Divider (Restoring Method)
- ALU (Arithmetic Logic Unit)

### Logic Circuits
- Basic Gates (AND, OR, NOT, XOR, NAND, NOR)
- Comparator
  - 1-bit
  - 4-bit
  - Parameterized N-bit

---

## Simulation Instructions

### Compile
iverilog module.v tb_module.v

### Run Simulation
vvp a.out

### View Waveform
gtkwave file.vcd

---

## Git Ignore
Output and temporary files are excluded using `.gitignore`:

*.vcd  
a.out  
*.log  

---

## Learning Objectives
- Understand RTL Coding Style
- Build Arithmetic & Logic Units
- Learn Sequential vs Combinational Design
- Practice Testbench Writing
- Prepare for VLSI / Digital Design Interviews

---

## Future Enhancements
- Multiplexers / Demultiplexers
- Encoders / Decoders
- Registers & Counters
- Finite State Machines (FSM)
- Mini CPU Design

---

**Author:** Dharaneesh Waran  
**Focus Area:** VLSI, Embedded Systems, and Digital Design
<<<<<<< HEAD
=======

⭐ *This repository reflects practical RTL design skills and continuous learning in VLSI domain.*
>>>>>>> cf858fbfc75c1e2e193463bb2bef7e50c676bac5
