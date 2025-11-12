// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract rPUSDStorage {
    /* ========== Role Definitions ========== */
    // Reward management role (mint/burn permissions)
    bytes32 public constant REWARD_MANAGER_ROLE =
        keccak256("REWARD_MANAGER_ROLE");
    // APY management role (only APY adjustment)
    bytes32 public constant APY_MANAGER_ROLE = keccak256("APY_MANAGER_ROLE");
    // Upgrade management role
    bytes32 public constant UPGRADER_ROLE = keccak256("UPGRADER_ROLE");
    // Pause management role
    bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");

    // Global yield configuration
    uint16 public globalActiveAPY; // Global active annual percentage yield (1 basis point = 0.01%, max 65535 = 655.35%)

    // Statistics
    uint256 public totalRewardAccrued; // Total accrued rewards

    // Lock status for REWARD_MANAGER_ROLE: once set to true, can never be modified
    bool public rewardManagerRoleLocked;

    /**
     * @dev Reserve 49 storage slots for future upgrades (1 slot used by rewardManagerRoleLocked)
     *      This is a best practice for UUPS upgrade pattern to ensure no storage conflicts during upgrades
     */
    uint256[49] private __gap;
}
