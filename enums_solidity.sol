// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract enums_solidity {

    enum loanStatus {Applied, InProgress, Verified, Approved}
    loanStatus SidLoanStatus;

    function applyloan() public returns(uint, loanStatus) {
        // everything is set to zero
        SidLoanStatus = loanStatus.Applied;
        return(block.timestamp, SidLoanStatus);
    }

    function Progress() public {
        SidLoanStatus = loanStatus.InProgress;
    }

    function IsInProgress() public view returns(bool) {
        require(SidLoanStatus == loanStatus.InProgress);
        return true;
    }
}