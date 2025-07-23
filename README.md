# 🔄 Upgradeable NFT Contract (UUPS Proxy - ERC-721)

This project demonstrates an **upgradeable ERC-721 NFT smart contract** using OpenZeppelin’s **UUPS proxy standard**. The contract allows seamless upgrades of logic without losing stored data like token counters or ownership.

## 📁 Contracts Overview

- **MyNFTV1.sol**  
  Initial version of the NFT contract. Implements:
  - ERC-721 token logic
  - UUPS upgrade support
  - Owner-only minting
  - Initialization setup for proxy compatibility

- **MyNFTV2.sol**  
  Second version of the contract used for upgrade testing. Adds:
  - A `version()` function to confirm successful upgrade

## ⚙️ How It Works

1. Deploy `MyNFTV1` using a UUPS proxy.
2. Initialize contract using `initialize()` instead of constructor.
3. Mint NFTs via `mint()` — token IDs auto-increment.
4. Deploy `MyNFTV2` as upgraded logic.
5. Upgrade the proxy to point to `MyNFTV2`.
6. Call `version()` to verify upgrade and continue minting.

## 🧠 Tools & Standards Used

- Solidity `^0.8.20`
- OpenZeppelin upgradeable contracts
- UUPS Proxy architecture
- ERC-721 standard
