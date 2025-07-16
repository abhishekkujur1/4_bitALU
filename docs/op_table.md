# 📜 4-Bit ALU Operation Truth Table

| Opcode | Operation | Verilog Equivalent | Example (A=5 `0101`, B=3 `0011`) | Result (Binary) | Flags (C, Z) |
|--------|-----------|---------------------|-----------------------------------|-----------------|--------------|
| `000`  | ADD       | `A + B`             | `0101 + 0011`                     | `1000` (8)      | `C=0, Z=0`   |
| `001`  | SUB       | `A - B`             | `0101 - 0011`                     | `0010` (2)      | `C=1, Z=0`   |
| `010`  | AND       | `A & B`             | `0101 & 0011`                     | `0001` (1)      | `C=0, Z=0`   |
| `011`  | OR        | `A \| B`            | `0101 \| 0011`                    | `0111` (7)      | `C=0, Z=0`   |
| `100`  | XOR       | `A ^ B`             | `0101 ^ 0011`                     | `0110` (6)      | `C=0, Z=0`   |
| `101`  | NOT       | `~A`                | `~0101`                           | `1010` (10)     | `C=0, Z=0`   |
| `110`  | SHL       | `A << 1`            | `0101 << 1`                       | `1010` (10)     | `C=0, Z=0`   |
| `111`  | SHR       | `A >> 1`            | `0101 >> 1`                       | `0010` (2)      | `C=0, Z=0`   |

---

## 📝 Notes:
1. **Flags**:  
   - **Carry (C)**: Set if arithmetic operation overflows (e.g., `ADD` with `1111 + 0001`).  
   - **Zero (Z)**: Set if `Result == 0000`.  
2. **Shift Operations**:  
   - `SHL`/`SHR` discard overflow bits (no circular shift).  
3. **NOT Operation**:  
   - Ignores `B` input.  

---

## 🧮 Binary Examples
| Operation | Binary Calculation       | Decimal |
|-----------|--------------------------|---------|
| `5 + 3`   | `0101 + 0011 = 1000`     | 8       |
| `5 - 3`   | `0101 - 0011 = 0010`     | 2       |
| `5 & 3`   | `0101 & 0011 = 0001`     | 1       |
| `5 \| 3`  | `0101 \| 0011 = 0111`    | 7       |

---

## 🔗 Related Files
- [Verilog Source (alu_4bit.v)](../src/alu_4bit.v)  
- [Testbench (tb_alu_4bit.v)](../src/tb_alu_4bit.v)  