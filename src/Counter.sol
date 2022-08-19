// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Counter {
    uint256 public number;

    function setNumber(uint256 newNumber) public {
        require(newNumber > 5, "C_sN: newNumber must be greater than 5");
        number = newNumber;
    }

    function increment() public {
        number++;
    }
}
