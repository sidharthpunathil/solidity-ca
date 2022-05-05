// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

// private : only in same contact
// internal: in same contact and deriverd contract
// external: it can only be called from an external contract

contract One {
    function  ExternalOneFunction() external pure returns(string memory) {
        return "External one function called";
    }

    // function  PrivateOneFunction() private pure returns(string memory) {
    //     // return PublicOneFunction();
    // }
}

contract Two is One{
    function  PublicTwoFunction() public pure returns(string memory) {
        // return PublicOneFunction();
    }
}