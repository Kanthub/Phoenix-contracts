// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface IyPUSD {
    /* ========== Events ========== */

    event Minted(address indexed to, uint256 amount, address indexed minter);
    event Burned(address indexed from, uint256 amount, address indexed burner);
    event MinterRoleLocked(address indexed minter, address indexed admin);

    // Note: Paused/Unpaused events are already defined in PausableUpgradeable
    // Note: Upgraded event is already defined in UUPSUpgradeable

    /* ========== Core Functions ========== */

    function mint(address to, uint256 amount) external;

    function burn(address from, uint256 amount) external;

    function decimals() external view returns (uint8);

    function transferFrom(address from, address to, uint256 amount) external returns (bool);

    function transfer(address to, uint256 amount) external returns (bool);

    function balanceOf(address account) external view returns (uint256);

    function totalSupply() external view returns (uint256);
    
    function allowance(address owner, address spender) external view returns (uint256);
}
