// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

// constructors are initial value during deployment

contract constructors {
    string public name;

    constructor(string memory _name) {
        name =  _name;
    }
}