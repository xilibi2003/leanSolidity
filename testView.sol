pragma solidity ^0.4.20;

contract testView {
    uint public b;


    function f(uint a) public returns (uint) {
        b = a * 2;
        return b;
    }

}
