// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract functions {
    // pure - when we do not want to use any state variable inside the function
    // view = when we want to use the state variable inside the finction, it's read only

    uint pincode = 10001;

    function add(int _a, int _b) public pure returns(int) {
        return _a + _b;
    }

    function pinc() public view returns(uint) {
        return pincode;
    }

}