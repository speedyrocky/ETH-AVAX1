// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

//For this project, write a smart contract that implements 
//the require(), assert() and revert() statements.
contract Bank{
    uint256 public balance;
    address public owner;
    constructor() {
        owner = msg.sender;
        balance = 0;
    }
    function deposit(uint256 amount) public {
        //implementation of require statement
        require(amount > 100, "Deposit amount must be greater than 100");
        balance += amount;
    }
    function withdraw(uint256 amount) public {
        // assert statement implementation
        assert(balance >= amount);
        balance -= amount;
    }
    function Savings(uint256 newBalance) public {
        if (msg.sender!= owner) {
            revert("!!Only owner is having such authority!!");
        }
        if (newBalance < 0) {
            revert("Your account is empty!! Deposit the required amount as soon as possible");
        }
        balance = newBalance;
    }
}
