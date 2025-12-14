# SimpleStorage

A basic Solidity smart contract built to practice state variables, updates, and unit testing using Foundry.

This project is part of my **blockchain learning journey**.

---

## 📦 Tech Stack

- Solidity
- Foundry (Forge)

---

## 📂 Project Structure

SimpleStorage/
├── src/
│ └── SimpleStorage.sol
├── test/
│ └── SimpleStorageTest.s.sol
├── foundry.toml
└── README.md


---

## 🧠 What This Contract Does

- Stores a single unsigned integer
- Allows updating the stored value
- Supports multiple updates
- Includes an increment function

---

## 🧪 Testing

This project uses **Foundry** for unit testing.

Tests cover:
- Default state values
- State updates
- Multiple updates
- Increment behavior

Run tests locally with:
```bash
forge test
