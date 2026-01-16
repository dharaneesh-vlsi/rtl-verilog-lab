# RTL Verilog Lab – Logic Gates Design & Verification

## 📌 Overview

This repository contains RTL designs and corresponding testbenches for basic combinational logic gates implemented using **Verilog HDL**.
The project is created to build a strong foundation in **RTL coding, simulation, and functional verification**, following an industry-style workflow using open-source EDA tools.

The repository is suitable for **VLSI/ASIC beginners**, RTL design aspirants, and students preparing for **RTL Design or Verification Engineer roles**.

---

## 🎯 Objectives

* Understand RTL-level design using Verilog HDL
* Learn how to write clean and synthesizable combinational logic
* Practice writing self-checking testbenches
* Perform simulation and analyze waveforms
* Follow industry-standard project structure and version control

---

## 🧩 Modules Implemented

The following logic gates are implemented at RTL level:

* AND Gate
* OR Gate
* NOT Gate
* NAND Gate
* NOR Gate
* XOR Gate
* XNOR Gate

Each RTL module has a **corresponding testbench** for functional verification.

---

## 🗂️ Project Structure

```
rtl-verilog-lab/
│
├── rtl/        # RTL design files (.v)
├── tb/         # Testbench files (.v)
├── wave/       # Generated waveform files (.vcd)
├── README.md
└── .gitignore
```

---

## 🛠️ Tools Used

| Purpose          | Tool                      |
| ---------------- | ------------------------- |
| RTL Coding       | Verilog HDL               |
| Simulation       | Icarus Verilog (iverilog) |
| Waveform Viewing | GTKWave                   |
| OS Environment   | Ubuntu (WSL)              |
| Version Control  | Git & GitHub              |

All tools used are **open-source and industry-relevant**.

---

## ▶️ Simulation Flow

1. Write RTL code (`rtl/*.v`)
2. Write corresponding testbench (`tb/*.v`)
3. Compile using Icarus Verilog
4. Run simulation to generate `.vcd` waveform
5. View waveform using GTKWave

### Example Commands

```bash
iverilog -o wave/or_gate.out rtl/or_gate.v tb/tb_or_gate.v
vvp wave/or_gate.out
gtkwave wave/or_gate.vcd
```

---

## 📈 Learning Outcomes

* Hands-on experience with RTL design flow
* Improved debugging skills using waveform analysis
* Understanding of design vs verification separation
* Exposure to Linux commands and Git-based workflows

---

## 🚀 Future Enhancements

* Add multiplexers, adders, and encoders
* Introduce SystemVerilog-based verification
* Add assertions and functional coverage
* Expand towards mini-SoC level blocks

---

## 👤 Author

**Dharaneesh Waran**
Aspiring RTL Design & Verification Engineer
Interested in VLSI, ASIC Design, and Embedded Systems

---

⭐ *This repository reflects practical RTL design skills and continuous learning in VLSI domain.*
