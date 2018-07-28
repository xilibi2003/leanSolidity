pragma solidity ^0.4.0;

contract TestFixedBytes {
    byte bt0;
    bytes1 bt1 = 0x01;
    bytes2 bt2 = "ab";
    bytes3 bt3 = "abc";

    function getLength() public constant returns (uint ) {
        return bt2.length;
    }

    function getFirst() public constant returns (uint ) {
        return bt3[0];
    }


    // 对比gas 消耗
    bytes10 constant bt10 = "Tiny Xiong";
    bytes32 constant bt32 = "Tiny Xiong";

    function  getByte10() payable public returns(bytes11) {
        return bt10;
    }

    function  getByte32() payable public returns(bytes32) {
        return bt32;
    }

}
