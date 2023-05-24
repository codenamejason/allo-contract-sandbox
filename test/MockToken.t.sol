// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";

import "../src/mocks/MockERC20.sol";

contract TokenTest is Test {
    MockERC20 _t;

    function setUp() public {
        _t = new MockERC20(1000);
    }

    function testName() public {
        assertEq(_t.name(), "Allo Token Mock");
    }

    function testSymbol() public {
        assertEq(_t.symbol(), "ATM");
    }
}
