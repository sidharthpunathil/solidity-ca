// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

// You cannot define state variables inside intefaces
interface IInterface {
    function setname(string memory _name) external;
    function getname() external view returns(string memory);
}

contract Access {
    function callSetName() public {
        IInterface(0xd9145CCE52D386f254917e481eB44e9943F39138).setname("sidp");
    }

    function getName() public view returns(string memory) {
        return IInterface(0xd9145CCE52D386f254917e481eB44e9943F39138).getname(); 
    }
}