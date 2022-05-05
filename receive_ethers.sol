// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract receive_ethers {
    address payable receiver = payable(0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2);
    
    function cellPhone() public payable returns(uint) {
        return address(this).balance;
    }

    function sendEther() public {
        receiver.transfer(5);
    }
}