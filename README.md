# 🔧 4-Bit Arithmetic Logic Unit (ALU) - Verilog Implementation

![Verilog](https://img.shields.io/badge/Verilog-FF0000?style=for-the-badge&logo=verilog&logoColor=white)
![GTKWave](https://img.shields.io/badge/Simulation-GTKWave-0078D7?style=for-the-badge)
![Icarus Verilog](https://img.shields.io/badge/Toolchain-Icarus_Verilog-FFD700?style=for-the-badge)

A fully functional 4-bit ALU implemented in Verilog, simulating 8 core operations with waveform validation. Perfect for FPGA/ASIC learning and resume projects!

## 🌟 Features
- **8 Operations**:  
  ```python
  ADD, SUB, AND, OR, XOR, NOT, Shift Left, Shift Right

Flags: Zero (Z) and Carry (C) detection

Tested: 100% coverage via Icarus Verilog testbench

Waveform Debugging: GTKWave visualization

## 📁 Repository Structure
```
4_bitALU/
├── src/                # Verilog source files
│   ├── alu_4bit.v      # Core ALU design
│   └── tb_alu_4bit.v   # Testbench with $display
├── sim/                # Simulation outputs
│   └── tb_alu_4bit.vcd # GTKWave waveform data
├── docs/               # Visual proofs
    ├── waveform.png    # GTKWave screenshot
    └── op_table.md     # Truth table

```

## 🚀 Quick Start
Simulation (Icarus Verilog + GTKWave)
```
# Clone the repo
git clone https://github.com/your_username/4_bitALU.git
cd 4_bitALU

# Run simulation (Linux/macOS)
chmod +x run_sim.sh
./run_sim.sh

# Windows users: Double-click run_sim.bat
```

## Expected Output
```
ADD:  5 +  3 =  8, Carry=0, Zero=0
SUB:  5 -  3 =  2, Carry=1, Zero=0
AND: 0101 & 0011 = 0001
```

## 📊 Simulation Results
