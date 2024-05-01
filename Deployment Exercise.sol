// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BasicMath {
    string public salt = "28"; 

    function adder(uint _a, uint _b) external pure returns (uint sum) {
        sum = _a + _b;
        require(sum >= _a && sum >= _b, "Addition overflow");
    }

    function subtractor(uint _a, uint _b) external pure returns (uint difference) {
        require(_a >= _b, "Subtraction underflow");
        difference = _a - _b;
    }

    function multiplier(uint _a, uint _b) external pure returns (uint product) {
        product = _a * _b;
        require(_a == 0 || _b == 0 || product / _a == _b, "Multiplication overflow");
    }

    function divider(uint _a, uint _b) external pure returns (uint quotient) {
        require(_b != 0, "Division by zero");
        quotient = _a / _b;
    }
}
