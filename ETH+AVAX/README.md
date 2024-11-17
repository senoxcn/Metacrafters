# Solidity Error Handling
This project demonstrates the use of error handling statements in Solidity: require(), assert(), and revert(). These statements are crucial for writing secure and reliable smart contracts, enabling developers to validate conditions, enforce invariants, and handle unexpected situations.

## Overview
The Challenge smart contract demonstrates:

- `require()`: Used for validating inputs and external conditions.
- `assert()`: Ensures critical invariants hold true within the contract logic.
- `revert()`: Allows developers to trigger errors manually for complex logic or custom error handling.

## Statements
`require()`
- Validates inputs, conditions, or function call results.
- Reverts the transaction with a custom error message if the condition fails.
- Refunds unused gas.

## Smart Contract Implementation
The contract includes the following methods:

1. `testRequire(uint _x)`: Validates that the input `_x` is greater than 10 using `require()`.
2. `testRevert(uint _x)`: Uses `revert()` to achieve the same validation for comparison.
3. `Assert()`: Checks the invariant that the `value` variable is always `0` using `assert()`.
4. `testCustomError(uint _withdraw)`: Demonstrates the use of custom errors with `revert()`.

## Testing
### Deployment
You can deploy this contract using:
- Remix IDE

### Usage
1. Deploy the contract using a Solidity-compatible tool.
2. Call the following methods to observe behavior:
   - `testRequire()`: Pass values greater or less than 10 to test input validation.
   - `testRevert()`: Similar to `testRequire()`, but implemented with `revert()`.
   - `Assert()`: Call to ensure that `value` remains `0`.
   - `testCustomError()`: Test withdrawing an amount greater than the contract balance.
  
## License
This project is licensed under the MIT License.
