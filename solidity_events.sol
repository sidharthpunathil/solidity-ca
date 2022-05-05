// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


// why do we need events in solidity?
// return values from blockchain smart contract to your calling application
// event storage is cheaper than state variables
// data stored inside the event storage cannot be accessed inside the smart contract

// why events are cheaper than storage?
// LOG - 375 gas(events are stored with log opcode)
// SSTORE - 20,000 gas (used for the storage variable)
// plus each indexed parameter cost you additional 375 gas

contract solidity_events {
    address sender;
    string name;

    // through indexing you can filter the events
    // max 3 indexed parameters in an events
    // it will store hash of the reference type(arrays, strings, bytes..), not the orginal value
    // when using reference type better not index them (you con't see the orginal value)
    event userDetail(address indexed _sender, string _name);

    function emitEvent(address _sender, string memory _name) public {
        emit userDetail(_sender, _name);
    }
}
