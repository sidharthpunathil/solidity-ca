// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

// the only variable that you can store inside a library is constant
// we are using memory because we are using state variables to other contracts
library ArrayLib {
    function reverse(uint[] storage _arr) external view returns(uint[] memory) {
        uint[] memory reverseArr  = new uint[](_arr.length);
        uint count = 1;

        for(uint i; i < _arr.length; i++) {
            reverseArr[_arr.length - count] = _arr[i];
            count ++;
        }

        return reverseArr;
    }
} 

contract myLib {
    // this will make all the methods related to array availabe inside this contract
    // using ArrayLib for uint[];
    uint[] public arr = [1,2,3,4];

    function getReverse() public view returns(uint[] memory) {
        return ArrayLib.reverse(arr);
    }

    function getLibAddr() public pure returns(address) {
        return address(ArrayLib);
    }
}