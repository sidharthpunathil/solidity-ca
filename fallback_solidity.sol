// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

// fallback function is executed when someone tries to call a function that doesn't exist in a smart contract

contract fallback_solidity {

    string public calledFunction;

    fallback() external payable{
         calledFunction = "Fallback function called";
    }
    receive() external payable{
        calledFunction = "Received function called";
    }

    function getBal() public view returns(uint) {
        return address(this).balance;
    } 
}