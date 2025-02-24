//SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract NumberManagement {

    uint256 public result;
    int256 public resultNeg;
    
    uint8 public x;
    uint16 public y;
    uint64 public z;

    function setX(uint8 value) public {
        x = value;
    }

    function setY(uint16 value) public {
        y = value;
    }

    function setZ(uint64 value) public {
        z = value;
    }

    function suma() public {
        result = x + y;
    }

    function suma2( uint256 value ) public {
        result = value + x;
    }

    function suma3( uint256 valueA, uint256 valueB ) public {
        result = valueA + valueB;
    }


    function resta() public {
        result = x - y;
    }

    function resta2( uint256 value ) public {
        result = value - x;
    }

    function resta3( uint256 valueA, uint256 valueB ) public {
        result = valueA - valueB;
    }

    function restaNeg(int256 valueA, int256 valueB) public {
        resultNeg = valueA - valueB;
    }

    function multi() public {
        result = x * y;
    }

    function multi2( uint256 value ) public {
        result = value * x;
    }

    function multi3( uint256 valueA, uint256 valueB ) public {
        result = valueA * valueB;
    }

    function div() public {
        result = x / y;
    }

    function div2( uint256 value ) public {
        result = value / x;
    }

    function div3( uint256 valueA, uint256 valueB ) public {
        result = valueA / valueB;
    }

    function percent() public { // 10%
        result = result - (result * 10 / 100);
    }

    function percent(
            uint per
        ) public {
            result = result - (result * per / 100);
    }

    function resultToZero() public {
        result = 0;
    }
}
