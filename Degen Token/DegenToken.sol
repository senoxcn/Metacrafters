// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

/*
Minting new tokens
Transferring tokens
Redeeming tokens
Checking token balance
Burning tokens
*/

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.0.0/contracts/token/ERC20/ERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.0.0/contracts/access/Ownable.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.0.0/contracts/token/ERC20/extensions/ERC20Burnable.sol";

contract DegenToken is ERC20, Ownable, ERC20Burnable {

    // Store items and their respective prices
    string[] private storeItems = ["Gold Degen", "Special Degen", "Legendary Degen"];
    mapping(string => uint256) public itemPrices;

    constructor() ERC20("Degen", "DGN") {
        // Initialize the prices for the store items
        itemPrices["Gold Degen"] = 100;
        itemPrices["Special Degen"] = 200;
        itemPrices["Legendary Degen"] = 350;
    }

    // Minting new tokens by the owner
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    // Overriding the decimals function to set it to 0
    function decimals() public pure override returns (uint8) {
        return 0;
    }

    // Check token balance of the sender
    function getBalance() external view returns (uint256) {
        return balanceOf(msg.sender);
    }

    // Transfer tokens to another player
    function transferTokens(address receiver, uint256 value) external {
        require(balanceOf(msg.sender) >= value, "You do not have enough Degen Tokens");
        transfer(receiver, value);
    }

    // Burn tokens owned by the sender
    function burnTokens(uint256 value) external {
        require(balanceOf(msg.sender) >= value, "You do not have enough Degen Tokens");
        _burn(msg.sender, value);
    }

    // Redeem tokens for store items
    function redeemTokens(string memory itemName) external {
        uint256 price = itemPrices[itemName];
        require(price > 0, "Item does not exist");
        require(balanceOf(msg.sender) >= price, "You do not have enough tokens to redeem this item");

        _burn(msg.sender, price); // Burn tokens for the redeemed item
    }

    // Show available store items with their prices
    function showStoreItems() external view returns (string[] memory, uint256[] memory) {
        uint256[] memory prices = new uint256[](storeItems.length);
        
        for (uint256 i = 0; i < storeItems.length; i++) {
            prices[i] = itemPrices[storeItems[i]];
        }
        
        return (storeItems, prices);
    }
}
