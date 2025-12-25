# Wallice_tree
# Wallace Tree Multiplier (COA Project)

## 📌 Overview
The **Wallace Tree Multiplier** is a high-speed multiplication technique used in **Computer Organization and Architecture (COA)**.  
It reduces the number of sequential addition stages by arranging partial products in a **tree structure of Carry Save Adders (CSAs)**, resulting in faster multiplication than traditional array multipliers.

---

## 🎯 Objective
- Design and understand the Wallace Tree Multiplier  
- Study partial product generation and reduction  
- Compare performance with array multipliers  
- Learn its importance in high-speed processors  

---

## 🧠 Working Principle
1. **Partial Product Generation**  
   Partial products are generated using AND gates between bits of the multiplicand and multiplier.

2. **Partial Product Reduction**  
   Partial products are reduced using **Full Adders and Half Adders** arranged in a tree structure called a Wallace Tree.

3. **Final Addition**  
   The final two rows are added using a fast adder such as a **Ripple Carry Adder** or **Carry Look-Ahead Adder** to produce the final result.

---

## 🧩 Architecture
