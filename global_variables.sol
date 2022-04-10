// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

uint constant number = 314;

contract global_variables {
    address public _owner = msg.sender; // give us the adderes of the caller
    bytes public _msgdata = msg.data;
    uint public _blocknumber = block.number;
    bytes32 public _blockhash = blockhash(3);
    address public _coinbase = block.coinbase; // address of miner who recently have mined
    uint public _gaslimit = block.gaslimit;
    uint public _blocktime = block.timestamp;
    uint public _gasleft = gasleft();
    address public _original_caller = tx.origin;

}

