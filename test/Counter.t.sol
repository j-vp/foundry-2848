// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/Counter.sol";

contract CounterTest is Test {
    Counter public counter;
    function setUp() public {
       counter = new Counter();
       counter.setNumber(10);
    }

    function testSetNumber(uint8 x) public {
        uint256 testnumb = counter.number();
        counter.increment();

        counter.setNumber(x);
        assertEq(counter.number(), x);
    }
}
