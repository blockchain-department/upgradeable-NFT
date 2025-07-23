// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "./MyNFTV1.sol";

contract MyNFTV2 is MyNFTV1 {
    function version() public pure returns (string memory) {
        return "V2";
    }
}
