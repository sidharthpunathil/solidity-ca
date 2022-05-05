// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract struct_data_types {
    struct Employee {
        string Name;
        uint Empid;
        uint Age;
        uint[] deptIds;
    }

    Employee public Sid;
    Employee[] Employees;

    function addEmp() public {
        Sid.Name = "SID";
        Sid.Empid = 12;
        Sid.Age = 20;
        Sid.deptIds.push(212);
    }

}