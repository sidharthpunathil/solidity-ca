// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract interfaces {
    string Name;
    function setname(string memory _name) public {
        Name = _name;
    }

    function getname() public view returns(string memory) {
        return Name;
    }
}