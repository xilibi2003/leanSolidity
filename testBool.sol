pragma solidity ^0.4.0;

contract TestBool {
    bool a = true;
    bool b = false;

    function test1() public returns (bool) {
        return a && b;
    }

    function test2() public returns (bool) {
        return a || b;
    }
    
}