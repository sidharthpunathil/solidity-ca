// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

uint constant number = 512; 

contract constant_immutable {
    string public constant name = "sid";

    // can't use immutable with dynamic array (string, bytes)
    // immutable can be set in a costructor or on declaration.
    uint256 public immutable pincode;

    constructor() {
        pincode = 12345;
    }

}