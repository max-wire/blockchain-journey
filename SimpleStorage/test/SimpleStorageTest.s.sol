// SPDX-License-Identifier: MIT

pragma solidity ^0.8.24;

import {Test} from "forge-std/Test.sol";
import {SimpleStorage} from "../src/SimpleStorage.sol";


contract SimpleStorageTest is Test {
    SimpleStorage simpleStorage;
    uint256 constant VALUE = 10;

    function setUp() external {
        simpleStorage = new SimpleStorage();
    }

    function testIfStateIsZero() public view {
        assertEq(simpleStorage.getNumber(), 0);
    }

    function testSettingValue() public {
        simpleStorage.setNumber(VALUE);
        assertEq(simpleStorage.getNumber(), VALUE);

    }

    function testMultipleSets() public {
        simpleStorage.setNumber(5);
        assertEq(simpleStorage.getNumber(), 5);
        simpleStorage.setNumber(77);
        assertEq(simpleStorage.getNumber(), 77);
    }

    function testIncrement() public {
        simpleStorage.setNumber(20);
        simpleStorage.increment();
        assertEq(simpleStorage.getNumber(), 21);
    }

    function testIncrementAfterSet() public {
        simpleStorage.setNumber(100);
        simpleStorage.increment();
        assertEq(simpleStorage.getNumber(), 101);
    }
}