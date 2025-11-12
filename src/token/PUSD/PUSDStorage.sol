// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract PUSDStorage {
    uint256 public cap;
    bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");

    // Lock status for MINTER_ROLE: once set to true, can never be modified
    bool public minterRoleLocked;

    // Reserved space for upgrades (49 slots reserved, 1 used by minterRoleLocked)
    uint256[49] private __gap;
}
