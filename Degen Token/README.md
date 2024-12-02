# **DegenToken Smart Contract**

The **DegenToken** smart contract is an ERC20 token implementation that includes features for minting, transferring, redeeming, burning tokens, and checking balances. Additionally, it includes a store feature where players can redeem tokens for specific items.

---

## **Functions**

1. **Minting New Tokens:**
   - The contract owner can mint new tokens to any address.
   
2. **Transferring Tokens:**
   - Players can transfer tokens to other players.
   
3. **Redeeming Tokens:**
   - Players can redeem tokens to purchase items from the in-game store.
   
4. **Checking Token Balance:**
   - Players can check their token balance at any time.
   
5. **Burning Tokens:**
   - Players can burn their tokens if they are no longer needed.
   
6. **In-Game Store:**
   - Players can view available items and their prices, then redeem tokens for these items.

---

## **Store Items**

The contract includes a predefined set of items available for purchase:

| Item Name         | Price (DGN Tokens) |
|-------------------|--------------------|
| Gold Degen        | 100                |
| Special Degen     | 200                |
| Legendary Degen   | 350                |

---

## **How to Deploy**

To deploy the **DegenToken** smart contract, follow these steps:

1. **Install Remix IDE:**
   - Open the [Remix IDE](https://remix.ethereum.org/) in your web browser.

2. **Set Environment:**
   - In Remix, go to the **"Environment"** dropdown (top left).
   - Select **"Injected Web3"** to connect to MetaMask, or select another environment if deploying to a specific network (e.g., Avalanche C-Chain).
   - Ensure your MetaMask wallet is connected to the correct network.

3. **Compile the Contract:**
   - In Remix, create a new file with the `.sol` extension.
   - Paste the contract code into the file.
   - Click on the **"Solidity Compiler"** tab in Remix and select the correct compiler version (e.g., `0.8.7`).
   - Click **"Compile"** to compile the contract.

4. **Deploy the Contract:**
   - After successful compilation, go to the **"Deploy & Run Transactions"** tab in Remix.
   - Select the correct environment (e.g., **Injected Web3** for MetaMask).
   - Under **"Deploy"**, select the contract `DegenToken` and click **"Deploy"**.
   - MetaMask will prompt you to confirm the transaction. Ensure you have enough funds in your wallet to cover the gas fees.

5. **Interact with the Contract:**
   - Once deployed, you can interact with the contract directly from Remix. You can call functions like minting, transferring, redeeming tokens, and checking balances.
## **How to Interact**

Once the **DegenToken** contract is deployed, you can interact with it using Remix IDE and your connected MetaMask wallet. Follow the steps below to interact with the contract:

### **1. Mint Tokens**
- **Function:** `mint(address to, uint256 amount)`
- **Description:** Allows the owner to mint tokens to a specified address.
- **How to use:** 
  - Call the `mint` function.
  - Provide the recipient address (`to`) and the number of tokens (`amount`) you want to mint.
  - Only the contract owner can call this function.

### **2. Transfer Tokens**
- **Function:** `transferTokens(address receiver, uint256 value)`
- **Description:** Allows players to transfer tokens to another player.
- **How to use:**
  - Call the `transferTokens` function.
  - Specify the receiver address (`receiver`) and the number of tokens (`value`) to transfer.
  - Ensure that the caller has enough tokens to complete the transfer.

### **3. Redeem Items**
- **Function:** `redeemTokens(string memory itemName)`
- **Description:** Allows players to redeem tokens for items from the in-game store.
- **How to use:**
  - Call the `redeemTokens` function.
  - Provide the item name (e.g., `"Gold Degen"`, `"Special Degen"`, or `"Legendary Degen"`).
  - Ensure that the caller has enough tokens to redeem the specified item.
  - The tokens will be burned as part of the redemption process.

### **4. View Store Items**
- **Function:** `showStoreItems()`
- **Description:** Displays the list of available store items and their prices.
- **How to use:**
  - Call the `showStoreItems` function.
  - This will return an array of item names and their respective prices.
  - Use this information to determine which items are available and how much they cost.

### **5. Burn Tokens**
- **Function:** `burnTokens(uint256 value)`
- **Description:** Allows players to burn their own tokens.
- **How to use:**
  - Call the `burnTokens` function.
  - Specify the number of tokens (`value`) to burn.
  - Ensure that the caller has enough tokens to burn.

### **6. Check Balance**
- **Function:** `getBalance()`
- **Description:** Returns the token balance of the caller.
- **How to use:**
  - Call the `getBalance` function.
  - This will return the current balance of the caller’s tokens.

## **Dependencies**

The **DegenToken** contract uses the following OpenZeppelin libraries for security, token standards, and functionality:

1. **ERC20.sol**
   - Provides the basic implementation of the ERC20 token standard.

2. **Ownable.sol**
   - Adds ownership functionality to the contract, ensuring that only the owner can mint tokens.

3. **ERC20Burnable.sol**
   - Allows tokens to be burned (i.e., destroyed) from the contract.

These libraries are imported from the [OpenZeppelin Contracts GitHub repository](https://github.com/OpenZeppelin/openzeppelin-contracts) to ensure security, reliability, and industry-standard practices in the smart contract.

---

## **License**

This project is licensed under the **MIT License**. See the [LICENSE](LICENSE) file for more information.

