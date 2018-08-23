pragma solidity ^0.4.24;

import "./mathLib.sol";

contract testLib {

    using mathlib for uint;

    function add (uint x, uint y) public returns (uint) {
        return x.plus(y);
        // return mathlib.plus(x,y);


    }

    function getThis() public view returns (address) {

        return mathlib.getThis();
    }



}
