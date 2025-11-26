# Gas & Storage in Ethereum

Understanding gas and storage is essential for writing efficient and
safe smart contracts.

---

## ⛽ What Is Gas?

Gas is the cost paid for executing operations on the Ethereum network.
It exists to prevent spam and to compensate validators for computation
and storage.

---

## 🧠 Key Principle

> Computation is cheap.  
> Storage is expensive.

Writing data to the blockchain permanently costs gas because every node
must store and agree on that data forever.

---

## 📦 Storage

- Persistent state stored on-chain
- Writing to storage costs gas
- Reading from storage is cheap

Examples:
- State variables
- Structs
- Arrays & mappings

---

## 🧪 Memory

- Temporary data used during function execution
- Cheaper than storage
- Cleared after the function call

Common use cases:
- Function parameters
- Temporary variables

---

## ⚠️ Loops and Gas Limits

Loops that depend on storage size can fail when gas limits are exceeded.
This is why iterating over large arrays on-chain is discouraged.

---

## ✅ Design Implications

- Prefer mappings for lookups
- Minimize storage writes
- Avoid unbounded loops
- Move heavy computation off-chain when possible
