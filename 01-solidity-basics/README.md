# Solidity Basics — SimpleStorage

This module introduces the most fundamental Solidity concepts through a
simple smart contract.

The goal is to understand how smart contracts store and modify data on
the blockchain.

---

## 📜 Contract Overview

### SimpleStorage.sol

The contract demonstrates how to:
- Declare state variables
- Assign and update values
- Read data from the blockchain

---

## 🧠 Concepts Learned

- **State variables**  
  Variables stored on-chain that preserve state between transactions.

- **Functions**  
  Public functions that can modify or read blockchain state.

- **Visibility**  
  Using `public` and `private` to control access.

- **View functions**  
  Reading data without modifying state or spending gas (when called locally).

---

## ⚠️ Common Mistakes and Misunderstandings

- Assuming state variables behave like normal program variables
- Forgetting that writing to storage costs gas
- Confusing view functions with state-changing functions

---

## 💡 Key Insight

> Smart contracts are not about computation —  
> they are about **persistent state that everyone agrees on**.

---

## 🔜 Next Steps

- Introduce structs to create custom data types
- Store multiple values using arrays
- Understand mappings for key-value storage
