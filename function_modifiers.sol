// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract function_modifiers {
    string public name = "sid";
    address owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(owner == msg.sender, "You are not the owner");
        _;
    }

    function chnageName(string memory _newName) public onlyOwner{
        name = _newName;
    }
}