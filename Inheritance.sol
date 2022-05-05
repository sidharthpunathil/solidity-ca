// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract One {
    string public Name;

    constructor(string memory _name) {
        Name = _name;
    }

    function OneFunc() public pure returns(string memory) {
        return "One Function";
    }
}

contract Two is One("Sid"){
    function TwoFunc() public pure returns(string memory) {
        return "Two Function";
    }

    function callFunctionOne() public pure returns(string memory) {
        return OneFunc();
    }
}

