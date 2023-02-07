// SPDX-License-Identifier: UNLICENSED
// Transactions deployed to address:  0xbb60FD698AE37719EdAbD4c7CDf34Dc5F924B466
pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract Transactions {
    // variable to store the number of transactions
    uint256 transactionCount;

    event Transfer(address from, address receiver, uint amount, string message, uint256 timestamp, string keyword);
  
    struct TransferStruct {
        address sender;
        address receiver;
        uint amount;
        string message;
        uint256 timestamp;
        string keyword;
    }
    // array of transaction of TransferStruct type
    TransferStruct[] transactions;

    function addToBlockchain(address payable receiver, uint amount, string memory message, string memory keyword) public {
        // increasing the transaction count
        transactionCount += 1;
        // pushing the transaction into transactions array
        transactions.push(TransferStruct(msg.sender, receiver, amount, message, block.timestamp, keyword));
        // making the transaction
        emit Transfer(msg.sender, receiver, amount, message, block.timestamp, keyword);
    }

    // returning transactions array from memory
    function getAllTransactions() public view returns (TransferStruct[] memory) {
        // returning transactions array
        return transactions;
    }

    // returning number of transactions done
    function getTransactionCount() public view returns (uint256) {
        return transactionCount;
    }
}
