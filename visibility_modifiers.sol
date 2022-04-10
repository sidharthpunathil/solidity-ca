// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract visibility_modifiers {
    // public - accessible inside of the contract and outside of the contract
    // private - can only be accessed only in this contract only
    // internal - this contract and the contract inheriting this contract
    // external - we can't declare external variable, it's only used for functions

    string public first_name = "sid";
    string private last_name = "p";
    int internal age = 20; // default variable of solidity is internal

}