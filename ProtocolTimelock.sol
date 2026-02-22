// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/governance/TimelockController.sol";

/**
 * @title ProtocolTimelock
 * @dev A professional implementation of a Timelock controller for DAO treasury management.
 */
contract ProtocolTimelock is TimelockController {
    /**
     * @param minDelay Minimum time (in seconds) between proposal and execution.
     * @param proposers List of addresses allowed to propose transactions.
     * @param executors List of addresses allowed to trigger execution after delay.
     * @param admin Optional admin address for role management (usually address(0) for decentralization).
     */
    constructor(
        uint256 minDelay,
        address[] memory proposers,
        address[] memory executors,
        address admin
    ) TimelockController(minDelay, proposers, executors, admin) {}
}
