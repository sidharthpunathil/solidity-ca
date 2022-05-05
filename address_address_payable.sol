// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract address_address_payable {
    address public owner;
    address payable public receiver = payable(0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2);

    function getBal() public returns(uint, uint){
        owner = msg.sender;
        return (owner.balance, receiver.balance);
    }
 
    function sentTo() public{
        // if the transfer fails, it will auto revert all the states in EVM
        receiver.transfer(10);
        // send will retuen the true and false statement
        // receiver.send(10);
    }
}