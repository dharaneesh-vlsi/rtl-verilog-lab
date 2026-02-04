# RTL Lab – Verilog / VLSI Practice Repository

## Overview
This repository contains my **RTL (Register Transfer Level) design practice** using **Verilog HDL**.  
The aim of this project is to build strong fundamentals in **Digital Electronics, VLSI Design, and CPU Datapath Concepts** through hands-on coding and simulation.

All modules are written, simulated, and verified using **Icarus Verilog** and **GTKWave** on **Ubuntu Linux**.

---

## Tools & Technologies
- Verilog HDL
- Icarus Verilog (iverilog)
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
