// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BasicMath {
    string public salt = "28"; 

    function adder(uint _a, uint _b) external pure returns (uint sum, bool error) {
        unchecked {
            uint result = _a + _b;
            if (result >= _a && result >= _b) {
                return (result, false);
            } else {
                return (0, true);
            }
        }
    }

    function subtractor(uint _a, uint _b) external pure returns (uint difference, bool error) {
        unchecked {
            if (_b <= _a) {
                return (_a - _b, false);
            } else {
                return (0, true);
            }
        }
    }

    function multiplier(uint _a, uint _b) external pure returns (uint product, bool error) {
        unchecked {
            uint result = _a * _b;
            if (_a == 0 || _b == 0 || result / _a == _b) {
                return (result, false);
            } else {
                return (0, true);
            }
        }
    }

    function divider(uint _a, uint _b) external pure returns (uint quotient, bool error) {
        unchecked {
            if (_b != 0 && _a >= _b) {
                return (_a / _b, false);
            } else {
                return (0, true);
            }
        }
    }
}
