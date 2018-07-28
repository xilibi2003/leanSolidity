pragma solidity ^0.4.0;  // 0.4.0 - 0.5.0

import "./first_interface.sol";

// This is a test Contract

contract Upchain {

    uint a;

    constructor () public {
        owerAddr = msg.sender;
    }

    event SetA(uint _a);

    address public owerAddr;

    modifier owner () {
        require(msg.sender == owerAddr);
        _;
    }

    function setA(uint _a) public owner {
        a = _a;
        emit SetA(_a);
    }

    struct Pos {
        uint lat;
        uint lng;
    }

}
