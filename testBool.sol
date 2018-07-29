pragma solidity ^0.4.0;

contract TestBool {

}

contract TestBool {
  
    bool a = true;
    bool b = false;

    function test1() public constant returns (bool) {
        return a && b;
    }

    function test2() public constant returns (bool) {
        return a || b;
    }

}
