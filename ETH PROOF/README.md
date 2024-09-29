# Moo deng Coin

This is a simple Ethereum smart contract simulation program where users can mint (create) or burn (remove) Moo deng coins (MDNG). The program allows the creation of an initial supply of coins and supports basic operations to manage token balances.

## Description

The `MyToken` contract represents a basic token that has the following features:
- **Public Variables**: 
  - `name`: The name of the token, which is "Moo deng".
  - `abbrv`: The abbreviation or ticker symbol, which is "MDNG".
  - `TOTAL_SUPPLY`: Tracks the total number of tokens in existence.
- **Mapping**: 
  - Tracks the balance of tokens for each address.
- **Minting**: 
  - Allows the creation of new tokens and assigns them to an address, increasing both the address's balance and the total supply.
- **Burning**: 
  - Allows tokens to be removed from an address, decreasing both the address's balance and the total supply (provided the address has enough tokens to burn).


## Getting Started

Before you begin, make sure you have access to the following:

- **Remix IDE**: Available at [https://remix.ethereum.org](https://remix.ethereum.org).

### Installation

Follow these steps to set up and run the contract in Remix:

1. Open [Remix IDE](https://remix.ethereum.org) in your browser.
2. Create a new file in Remix with the name `MyToken.sol`.
3. Copy and paste the smart contract code into `MyToken.sol`.
4. Compile the contract by selecting the Solidity compiler in Remix on left side panel (make sure to use the appropriate compiler version).
5. Deploy the contract:
   - Switch to the "Deploy & run transactions" tab (under Solidity compiler tab).
   - Click "Deploy" to deploy the contract.

### Executing the Program

Once the contract is deployed, you can interact with it using the following functions:

- Copy your account address first and paste it to `_address` field.

- **Mint Tokens**: Use the `mint(address _address, uint _amount)` function to add tokens to an address.
  - Example: To mint 100 tokens to a specific address, enter the address and amount in the function parameters and execute the function.

- **Burn Tokens**: Use the `burn(address _address, uint _amount)` function to burn tokens from an address.
  - Example: To burn 50 tokens from a specific address, enter the address and amount in the function parameters and execute the function.

- **Check Balance**: After minting or burning tokens, check the balance of any address by viewing the `balances(address)` mapping in Remix.

## License
This project is licensed under the MIT License.

