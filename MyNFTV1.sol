// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts-upgradeable/token/ERC721/ERC721Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

contract MyNFTV1 is Initializable, ERC721Upgradeable, OwnableUpgradeable, UUPSUpgradeable {
    uint256 public tokenIdCounter;

    function initialize() public initializer {
        __ERC721_init("MyNFT", "MNFT");
        __Ownable_init(msg.sender);
        __UUPSUpgradeable_init();
        tokenIdCounter = 1;
    }

    function mint() public {
        _mint(msg.sender, tokenIdCounter);
        tokenIdCounter++;
    }

    function _authorizeUpgrade(address newImplementation)
        internal
        override
        onlyOwner
    {}
}
