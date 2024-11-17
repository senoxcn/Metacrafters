/ SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

//write a smart contract that implements the require(), assert() and revert() statements.

contract Challenge {

    //require()
    function testRequire(uint _x) public pure {
        require(_x > 10, "Input must be greater than 10");
    }

    function testRevert(uint _x) public pure {
        if (_x <= 10) {
            revert("Input must be greater than 10");
        }
    }

    uint public value;
    // assert()
    function Assert() public view {
        assert(value == 0);
    }

    // revert()
    error noFunds(uint balance, uint withdraw);

    function testCustomError(uint _withdraw) public view {
        uint bal = address(this).balance;
        if (bal < _withdraw) {
            revert noFunds({balance: bal, withdraw: _withdraw});
        }
    }
}
