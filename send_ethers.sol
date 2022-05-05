// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract send_ethers {
    function sendEth() public payable {
        // we can also limit the gas in the call function
        (bool success,) = payable(0x4a9C121080f6D9250Fc0143f41B595fD172E31bf).call{value: 1 ether}("calling via call function");
        require(success, "Transfer Failed");
    }
    
    function getBal() public view returns(uint) {
        return address(this).balance;
    }
}