pragma solidity ^0.4.24;  //  0.4.25 - 0.5

contract SimpleStorage {
    uint storedData;

    function set(uint x) public {
        storedData = x;
    }

    function get() public constant returns (uint) {
        return storedData;
    }

}
