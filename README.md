# Error Challenge 

## Overview
This Solidity smart contract, named ErrorChallenge, is designed to illustrate basic error handling techniques using `assert()`, `revert()`, and `require()`. The contract includes functions for transferring tokens between addresses, depositing tokens, and simulating a token swap.

## Functions

### 1. Transfer Function
```solidity
function transfer(address addressOne, address addressTwo, uint amount) public payable {
    require(balance[addressOne] > amount, " You can proceed");
    balance[addressOne] -= amount;
    balance[addressTwo] += amount;
}
```
This function enables the transfer of tokens from `addressOne` to `addressTwo`. It utilizes the `require` statement to ensure that the balance of `addressOne` is greater than the specified amount before proceeding with the transfer.

### 2. Deposit Function
```solidity
function deposit(address addressThree, uint amount) public payable returns(string memory) {
    assert (balance[addressThree] >= amount);
    balance[addressThree] += amount;
    return "Deposit was successful";
}
```
The deposit function checks if the balance of `addressThree` is greater than or equal to the specified amount using `assert`. If the condition is met, the specified amount is added to the balance of `addressThree`, and a success message is returned.

### 3. Swap Function
```solidity
function swap(uint tokenA, uint amount) public payable {
    if (amount > 5) {
        revert("Transaction unsuccessful");
    }
    tokenB = 5 * tokenA;
}
```
The swap function simulates an arbitrary token swap and uses the `revert` statement to handle a specific condition. If the specified amount is greater than 5, the transaction is unsuccessful and is reverted with an appropriate error message.

## License
This smart contract is licensed under the MIT License.

## Author
Jeremiah Samuel
livinalt@gmail.com
