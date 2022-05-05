// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract solidity_array {
    // 2 types, dynamic and fixed

    uint[10] public Num1; // Fixed
    uint[] public Num2; // Dynamic
    uint[] public Num3 = [1, 2, 3];

    // available for dynamic array, push, popm length, delete
    // available for fixed array length, delete

    // inside a function you cannot declare a dynamic array but you can declare a fixed sized array
    function push_array(uint _num1) public {
        // uint[] memory tempArray = new uint[](5);
        Num2.push(_num1);
    }

    function pop_array() public {
        Num2.pop();
    }

    function len_array() public view returns(uint) {
        return Num2.length;
    }

    function del_array(uint _index) public {
        delete Num2[_index];
    }
}