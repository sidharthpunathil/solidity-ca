// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract string_concat {
    // string data type
    // everything that is on the contract code (outside) is stored on the blockchain
    string public name = "sid";

    // pure because we are not changing any state variables
    function concat(string memory _a, string memory _b) public pure returns(string memory result) {
        return string(abi.encodePacked(_a, _b));
    }

}