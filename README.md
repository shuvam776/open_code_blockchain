# Student Registry Smart Contract

## Overview
This project is a simple Solidity smart contract that allows students to register
their details on the blockchain using their wallet address as identity.
Each wallet address can register only once.

This contract was built as part of the **OpenCode Induction – Smart Contract Development (Compulsory Task)**.

---

## Features
- Register student details (name and roll number)
- One registration per wallet address
- Input validation using `require`
- Public retrieval of student data using wallet address
- Event emitted on successful registration

---

## Smart Contract Details
- Language: Solidity
- Solidity Version: ^0.8.20
- Network: **Ethereum Sepolia Testnet**

---

## Contract Functions

### `registerStudent(string name, uint256 rollNumber)`
Registers the caller’s wallet address with student details.
- Name must not be empty
- Roll number must be greater than 0
- A wallet can register only once

### `getStudent(address studentAddress)`
Returns the name and roll number of a registered student.
- Reverts if the address is not registered

---

## Deployment Information
- **Network:** Sepolia Testnet  
- **Contract Address:**  0xD55021Af847C3d763d1B39ad9C604D0847AABF89

---

## Transactions

### Deployment Transaction
0xbd7859f84d87d8f7d5c4b7990331bf3ffcb04684ba46146e6250c2d918578b01


### Student Registration Transaction
0xdd9d84fadc2c29ced166a8181daadadf25b1852aae890d601a0fafc5345c82b5


---

## Verification
The contract and transactions can be verified on **Sepolia Etherscan** using the
contract address and transaction hashes provided above.

---

## Author
**Shuvam Satapathi**
