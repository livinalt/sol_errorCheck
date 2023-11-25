// SPDX-License-Identifier: MIT
pragma solidity 0.8.22;

contract ErrorChallenge{
    // this contract is to illustrate the basic error handling technique using the assert, revert and require 

    uint amount;
    uint tokenA;
    uint tokenB;
    mapping (address => uint) public balance;


    function transfer(address addressOne, address addressTwo, uint amount) public payable {
        require(balance[addressOne] > amount, " You can proceed");
        balance[addressOne] -= amount;
        balance[addressTwo] += amount;
    }

    function deposit(address addressThree,uint amount) public payable returns(string memory) {
        assert (balance[addressThree] >= amount);
        balance[addressThree] += amount;
        return "Deposit was successful";
    }

    function swap(uint tokenA, uint amount) public payable {
        if (amount>5){
            revert ("Transaction unsuccessful");
                }
        tokenB = 5*tokenA;
    }

}
