// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "./visibility.sol";

contract Three {
    One contractAddr = One(0x86cA07C6D491Ad7A535c26c5e35442f3e26e8497);
    function callExt() public view returns(string memory) {
        return contractAddr.ExternalOneFunction();
    }
}