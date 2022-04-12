// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

// variables declared outside of the functions are state variables, they are stored in the blockchain
// memory is a temporary storage, it can only be declared inside functions or to receive the function paramenters
// default storage type is calldata, calldata storage is non-modifiable storage, once function parameters are passed you cannot modify them
//-it is cheaper than memory types and mostly used with external function types

contract storage_types {
    string twitterAccount = "0xS1dharth";

    function desplayAccount(string memory _accountName) public pure returns(string memory) {
        return _accountName;
    }

    function result(string calldata _a) external pure returns(string calldata) {
        // _a = "xid"; // can't change value due to calldata
        return _a;
    }

    function accessExternalFunction() public view returns(string memory) {
        return this.result(twitterAccount);
    }

}