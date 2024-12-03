// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.0.0/contracts/token/ERC20/ERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.0.0/contracts/access/Ownable.sol";

contract BloodShard is ERC20, Ownable {
    // Constructor to set the token name, symbol, and initial owner
    constructor(string memory name, string memory symbol) ERC20(name, symbol) {
        //Ownable constructor doesn't take parameters and is automatically set to the contract deployer
        
    }

    // Mint function - only callable by the contract owner
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    // Burn function - allows any user to burn their own tokens
    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }

    // Transfer tokens to other account
    function transferTokens(address receiver, uint256 value) external {
        require(balanceOf(msg.sender) >= value, "You do not have enough Degen Tokens");
        transfer(receiver, value);
    }

    // Override decimals to set a standard 18 decimal places
    function decimals() public pure override returns (uint8) {
        return 18;
    }
}
