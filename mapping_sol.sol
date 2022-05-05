// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract mapping_sol {
    mapping(uint=> string) public Person;

    function addPerson() public {
        Person[1] = "Sid";
    }
}