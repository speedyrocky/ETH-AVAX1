# Smart Contract

This program is a smart contract that implements the require(), assert() and revert() statements.

## Description

The smart contract Bank implements basic banking functionalities on the Ethereum blockchain. It allows users to deposit their funds/amount, withdraw them if sufficient balance exists, and enables the contract owner to set a new balance and Using require(), assert(), and revert() statements, the contract ensures transactions are validated against specified conditions: deposits must exceed from certain limit, withdrawals cannot exceed available funds, and only the contract owner can adjust the balance to prevent unauthorized changes or negative balances.

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., Project.sol). Copy and paste the following code into the file:

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

//For this project, write a smart contract that implements 
//the require(), assert() and revert() statements.

contract Bank
{

    uint256 public balance;
    address public owner;
    constructor() {
        owner = msg.sender;
        balance = 0;
    }
    function deposit(uint256 amount) public 
    
    {
        //implementation of require statement
        require(amount > 100, "Deposit amount must be greater than 100");
        balance += amount;
    }
    
    function withdraw(uint256 amount) public
    
    {
        // assert statement implementation
        assert(balance >= amount);
        balance -= amount;
        
    }
    function Savings(uint256 newBalance) public
    {
        if (msg.sender!= owner)
        {
            revert("!!Only owner is having such authority!!");
        }
        
        if (newBalance < 0)
        {
            revert("Your account is empty!! Deposit the required amount as soon as possible");
        }
        balance = newBalance;
    }
}

This contract serves as a simple banking system on the Ethereum blockchain, demonstrating basic security practices using require(), assert(), and revert() statements to safeguard against improper use and ensure the integrity of operations.

By deploying this contract, users can deposit funds, withdraw funds (if available), and the contract owner can adjust the total balance securely. Each function incorporates checks and balances to maintain the contract's reliability and security in a decentralized environment.

## Authors
Vivek Kumar
