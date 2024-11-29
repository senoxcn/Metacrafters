# Enhanced ATM Smart Contract

This project implements a simple ATM system using Ethereum smart contracts and a frontend that interacts with the contract via MetaMask. The ATM contract allows users to deposit, withdraw, and reset balances. It is designed with a focus on simplicity and functionality in mind, leveraging Solidity for the contract and React.js for the frontend.

## Features

- **Deposit:** Users can deposit ETH into the contract.
- **Withdraw:** Users can withdraw ETH from the contract (if they have sufficient balance).
- **Reset Balance:** The contract owner can reset the balance of the ATM to a specific value.
  
## Technologies

- **Solidity:** The smart contract is written in Solidity, deployed on the Ethereum network.
- **React.js:** The frontend is built using React.js, which interacts with the Ethereum smart contract.
- **Ethers.js:** The frontend uses `ethers.js` to interact with the Ethereum blockchain and manage wallet connections.
- **MetaMask:** MetaMask is used for wallet management and authentication.

## Installation

To run this project locally, follow the steps below:

### Prerequisites

- Node.js (v14 or higher)
- MetaMask extension for your browser
- A local Ethereum network (e.g., Ganache) or testnet (e.g., Rinkeby, Goerli)

### Steps to Run Locally

1. Inside the project directory, in the terminal type: npm i
2. Open two additional terminals in your VS code
3. In the second terminal type: npx hardhat node
4. In the third terminal, type: npx hardhat run --network localhost scripts/deploy.js
5. Back in the first terminal, type npm run dev to launch the front-end.

After this, the project will be running on your localhost. 
Typically at http://localhost:3000/

## License
This project is licensed under the MIT License.

