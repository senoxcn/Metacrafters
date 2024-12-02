
# BloodShard Token Contract

BloodShard is an ERC-20 token implemented using Solidity. This smart contract allows the contract owner to mint new tokens, and any user to transfer or burn their own tokens.

## Features

- **Mint Tokens:** Only the contract owner can mint tokens to any specified address.
- **Burn Tokens** Any user can burn their own tokens.
- **ERC-20 Standards:** Implements standard ERC-20 functionality such as `transfer` functions and `approve`.
  
## Prerequisites

- Solidity version ^0.8.7.
- OpenZeppelin Contracts v4.0.0.
- Remix IDE for contract deployment and testing.

## Installation

1. Open Remix IDE.
2. Create a new file and paste the contract code.
4. Ensure you have access to the internet for importing OpenZeppelin contracts.
5. Compile the contract using Solidity compiler version ^0.8.7.

### Deployment

1. Deploy the contract on any Ethereum-compatible network using Remix IDE.
2. Set the constructor parameters:
  - Token Name: A human-readable name for the token (e.g., "BloodShard").
  - Token Symbol: The shorthand symbol for the token (e.g., "BS").

## License
This project is licensed under the MIT License.
