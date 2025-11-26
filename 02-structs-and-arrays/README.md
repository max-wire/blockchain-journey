# Structs & Arrays — PeopleStorage

This module introduces **custom data types** and **collections** in
Solidity using structs and arrays.

It expands on the idea of storing a single value by enabling storage
of multiple related values.

---

## 📜 Contract Overview

### PeopleStorage.sol

The contract demonstrates how to:
- Define a struct to group related data
- Store multiple structs in an array
- Add new entries dynamically
- Read collection size from storage

---

## 🧠 Concepts Learned

- **Structs**  
  Custom data types that bundle related properties.

- **Arrays**  
  Ordered collections that store multiple values of the same type.

- **Dynamic arrays**  
  Arrays that grow as new elements are added.

- **Memory keyword**  
  Used for function parameters to avoid unnecessary storage costs.

---

## ⚠️ Common Mistakes and Misunderstandings

- Forgetting `memory` when passing strings
- Thinking arrays are cheap to loop over on-chain
- Assuming structs behave like objects in OOP

---

## 💡 Key Insight

> On-chain storage is expensive.  
> Structs help organize data,  
> arrays help track collections —  
> but both must be used **intentionally**.

---

## 🔜 Next Steps

- Optimize lookups using mappings
- Combine arrays and mappings together
- Learn why iteration on-chain is dangerous
