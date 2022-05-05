// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract One {
    string public Name;

    constructor(string memory _name) {
        Name = _name;
    }

    // virtual means you want to override this contract whereever you are inheriting this contract
    function OneFunc() public virtual pure returns(string memory) {
        return "One Function";
    }
}

contract Two is One("Sid"){
    function OneFunc() public virtual override pure returns(string memory) {
        return "Two Function";
    }

    function callFunctionOne() public pure returns(string memory) {
        return OneFunc();
    }

    function accessContractOne() public pure returns(string memory) {
        return super.OneFunc();
    }
}

contract Three is Two {
    function OneFunc() public override pure returns(string memory) {
        return "Three Function";
    }
}
