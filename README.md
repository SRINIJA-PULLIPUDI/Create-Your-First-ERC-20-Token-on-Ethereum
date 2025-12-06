# MyToken (MTK)

## Overview
MyToken is a simple ERC-20 compatible token built on Ethereum for learning and educational purposes.  
It demonstrates the fundamental concepts of smart contracts, token transfers, allowances, and event emission.

---

## Token Details
- **Name:** MyToken
- **Symbol:** MTK
- **Decimals:** 18
- **Total Supply:** 1,000,000 MTK
- **Token Standard:** ERC-20

---

## Features
✅ Standard ERC-20 implementation  
✅ Token transfers between addresses  
✅ Approve and transferFrom functionality  
✅ Allowance management  
✅ Transfer and Approval event emission  
✅ Balance tracking  
✅ Input validation and error handling  

---

## Development Environment
- **Language:** Solidity ^0.8.x
- **IDE:** Remix IDE (Browser-based)
- **Blockchain:** Ethereum (Remix VM)

---

## How to Deploy

1. Open Remix IDE: https://remix.ethereum.org
2. Create a new file named `MyToken.sol`
3. Paste the smart contract code into the file
4. Compile the contract using Solidity `0.8.x`
5. Go to **Deploy & Run Transactions**
6. Select **Remix VM** as the environment
7. Enter the constructor parameter:
8. Click **Deploy**
9. Verify the contract appears under **Deployed Contracts**

---

## How to Use

### Check Balance
```solidity
balanceOf(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4) → returns 1000000000000000000000000
```

### Transfer Tokens
```solidity
transfer(0x78731D3Ca6b7E34aC0F824c42a7cC18A495cabaB, 1000000000000000000000000) → returns true
```

### Approve Token Spending
```solidity
approve(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4, 5000000000000000000) → returns true
```

### Transfer Tokens on Behalf of Owner
```solidity
transferFrom(0x78731D3Ca6b7E34aC0F824c42a7cC18A495cabaB, 0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db, 5000000000000000000) → returns true
```

### Check Allowance
```solidity
allowance("0x78731D3Ca6b7E34aC0F824c42a7cC18A495cabaB", 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4) → returns 0
```


