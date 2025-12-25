# Wallace Tree Multiplier (COA Project)

## 📌 Overview
The **Wallace Tree Multiplier** is a high-speed multiplication technique used in **Computer Organization and Architecture (COA)**.  
It reduces the number of sequential addition stages by organizing partial products in a **tree structure of Carry Save Adders (CSAs)**, making multiplication significantly faster than array multipliers.

---

## 🎯 Objective
- Design and analyze a Wallace Tree Multiplier  
- Understand partial product generation and reduction  
- Compare performance with array multipliers  
- Study its importance in high-speed processors  

---

## 🧠 Working Principle
1. **Partial Product Generation**  
   Partial products are generated using AND gates between multiplicand and multiplier bits.

2. **Partial Product Reduction (Wallace Tree)**  
   Partial products are reduced using **Full Adders (FA)** and **Half Adders (HA)** arranged in multiple reduction levels.

3. **Final Addition**  
   The final two rows are added using a fast adder such as a **Ripple Carry Adder (RCA)** or **Carry Look-Ahead Adder (CLA)**.

---

## 🧩 Wallace Tree Architecture

### 🔹 Overall Block Diagram
+---------------------+
| Multiplicand (A) |
+---------------------+
|
v
+---------------------+
| Partial Product |
| Generation (AND) |
+---------------------+
|
v
+---------------------+
| Wallace Tree |
| Reduction (CSA) |
+---------------------+
|
v
+---------------------+
| Final Fast Adder |
+---------------------+
|
v
+---------------------+
| Product Output |
+---------------------+

yaml
Copy code

---

### 🔹 Partial Product Reduction (Example: 4×4 Wallace Tree)
PP0: a0b0 a1b0 a2b0 a3b0
PP1: a0b1 a1b1 a2b1 a3b1
PP2: a0b2 a1b2 a2b2 a3b2
PP3: a0b3 a1b3 a2b3 a3b3
Level 1: FA FA FA
Level 2: FA FA
Final: RCA / CLA

yaml
Copy code

*FA – Full Adder, HA – Half Adder*

---

## ⚙️ Tools & Technologies
- Digital Logic Design
- Verilog HDL / Logisim / ModelSim
- Computer Organization & Architecture concepts

---

## 📁 Project Structure
Wallace-Tree-Multiplier/
|
|-- README.md
|-- diagrams/
| |-- wallace_tree_architecture.png
|-- code/
| |-- wallace_tree_multiplier.v
|-- results/
| |-- simulation_output.png
|-- docs/
| |-- theory.pdf

yaml
Copy code

---

## 📈 Advantages
- High-speed multiplication
- Reduced critical path delay
- Efficient for large bit-width operands
- Used in modern CPUs and DSPs

---

## ⚠️ Limitations
- Increased hardware complexity
- Irregular interconnections
- Higher wiring cost

---

## 🧪 Results
- Correct multiplication verified through simulation
- Fewer addition stages compared to array multipliers
- Improved computational speed

---

## 📚 Applications
- Arithmetic Logic Units (ALU)
- Digital Signal Processing (DSP)
- High-performance processors
- VLSI system design

---

## 📖 References
- C. S. Wallace, “A Suggestion for a Fast Multiplier”, IEEE Transactions  
- M. Morris Mano, *Digital Design*  
- John P. Hayes, *Computer Architecture and Organization*  
- COA Lecture Notes  

---

## 👩‍💻 Author
**Bhavya Sri Pulikhandam**  
B.Tech CSE  
SRM University, Andhra Pradesh  

---

## ⭐ Acknowledgment
This project was completed as part of the **Computer Organization and Architecture** course.
 
