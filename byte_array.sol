// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

// bytes data type is one of the cheapest way to store data on the blockchain
// bytes (when we know the length, and when we don't know the length)
contract byte_array {
    bytes public name = "sii";
    bytes32 public name1 = "iamsidhath";

    // any length data
    bytes public sentence = "hello there, ppl";

    function access() public view returns(bytes1) {
        return name[3];
    }

    function bytes_length() public view returns(uint) {
        return name.length;
    }

    function bytes_pop() public{
        name.pop;
    }
}