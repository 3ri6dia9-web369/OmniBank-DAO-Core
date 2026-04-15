// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";

/**
 * @title OmniBank Sovereign Token (OMNI)
 * @author Arulu of Eotu | 3ri6dia9-web369
 * @notice The core economic unit for the Arulu of Eotu sovereign ecosystem.
 * @dev Integrates 369 Cybernetic logic for future reward scaling.
 */
contract OmniToken is ERC20, Ownable, ERC20Burnable {
    
    // The "Genesis Constellation": Historic total supply for the Detroit Renaissance
    uint256 public constant INITIAL_SUPPLY = 369_000_000 * 10**18;

    constructor() ERC20("OmniBank Sovereign", "OMNI") Ownable(msg.sender) {
        // Minting the historic supply to the deployer (The Genesis Node)
        _mint(msg.sender, INITIAL_SUPPLY);
    }

    /**
     * @notice Cybernetic Opportunity: Minting function for protocol growth.
     * @dev Restricted to the DAO/Owner to maintain sovereign control.
     */
    function sovereignMint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    /**
     * @notice 369 Resonance Check: A historic logic gate for future modules.
     * @param value The value to check for 3, 6, or 9 alignment.
     */
    function isResonant(uint256 value) public pure returns (bool) {
        uint256 sum = value % 9;
        return (sum == 3 || sum == 6 || sum == 0); // 0 is the digital equivalent of 9
    }
}
