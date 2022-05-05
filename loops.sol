// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract solidity_loops {
    uint[] public num;

    function doWhileLoop() public {
        uint x = 0;
        do {
            num.push(x * 3);
            x++;
        }
        while(x != 5);
    }

    function whileLoop() public {
        uint x = 0;
        while(x != 5) {
            num.push(x * 5);
            x++;
        }
    }

    function forLoop() public {
        for(uint i; i<5; i++) {
            num.push(i * 7);
        }
    }
}