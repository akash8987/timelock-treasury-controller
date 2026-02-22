# Timelock Treasury Controller

This repository provides a professional-grade Timelock contract based on the OpenZeppelin standard. It is a fundamental component for any decentralized project that values transparency and security.

### How It Works
Instead of a human-controlled wallet owning your smart contracts, the **TimelockController** takes ownership. When an action is proposed (e.g., changing a protocol fee), the Timelock forces a waiting period (e.g., 48 hours). This gives the community time to inspect the transaction or exit the protocol if the change is malicious.



### Core Security Features
* **Delay Period:** Configurable minimum delay before any transaction can be executed.
* **Role-Based Access Control (RBAC):** Separate roles for Proposers, Executors, and Cancellers.
* **Transparency:** Every proposed action is visible on-chain during the delay period.
* **Emergency Cancellation:** Cancellers can stop a malicious transaction before the timer expires.

### Integration
1. Deploy the Timelock with a minimum delay (e.g., 172800 seconds for 2 days).
2. Transfer ownership of your main contracts to the Timelock address.
3. Use the `propose` and `execute` functions to manage your protocol.
