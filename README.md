# 4-Bit Ripple Carry Adder (Verilog HDL)

## Overview
This project implements a 4-bit Ripple Carry Adder (RCA) using Verilog HDL. The design features a hybrid modeling approach: dataflow continuous assignments for the individual 1-bit full adders, and structural module instantiation to cascade the components into a complete 4-bit adder unit.

---

## Features
* **Structural Architecture:** Cascades four 1-bit Full Adder instances using internal signal wires for mid-stage carries.
* **Dataflow Optimization:** Employs boolean bitwise operators for high-performance sub-module calculation logic.
* **Functional Testbench:** Fully verified with custom stimulus test cases covering standard addition and overflow logic checks.

---

## Project Structure

* **README.md**
* **4bitripplecarryadder.v**
* **ripplecarrytest.v**
* **schematic_4bit_rca.png**
* **waveform_4bit_rca_simulation.png**

---

## Author
* **Name:** JHA ANAY SOHANKUMAR
* **Intern ID:** CTIS4668
