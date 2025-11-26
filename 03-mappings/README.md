# Mappings — Key-Value Storage

This module introduces **mappings**, Solidity’s most efficient data
structure for on-chain lookups.

Mappings solve the problem of fast access to data using keys.

---

## 📜 Contract Overview

### MappingStorage.sol

The contract demonstrates how to:
- Store values using a key-value mapping
- Perform constant-time lookups
- Track keys separately using an array
- Combine mappings and arrays safely

---

## 🧠 Concepts Learned

- **Mappings**  
  Key-value storage that allows fast lookups.

- **Default values**  
  Missing keys return default values instead of errors.

- **Hybrid data structures**  
  Using arrays alongside mappings to overcome limitations.

- **Private mappings**  
  Even private mappings are visible on-chain — privacy is logical, not absolute.

---

## ⚠️ Common Mistakes and Misunderstandings

- Trying to iterate over mappings
- Assuming mappings store keys
- Believing private data is truly hidden

---

## 💡 Key Insight

> Mappings don’t store keys.  
> They answer questions — they don’t list data.

To build real applications, mappings are usually paired with arrays
or events.

---

## 🔜 Next Steps

- Study gas costs of storage vs computation
- Learn why loops are dangerous on-chain
- Introduce events and indexing
