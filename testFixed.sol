pragma solidity ^0.4.0;

contract TestFixed {
    ufixed32x1 f;

    // uint == uint256

    bytes1 bt1 = 0x01;  //  byte  等价 bytes1
    bytes2 bt2 = "ab";
    bytes3 bt3 = "abc";
    string a = "abc";

    // 比较运算 位运算
    function testCompare() public constant returns (bytes3 ) {
        return bt2 & bt3;
    }

    function getFirst() public constant returns (byte ) {
        return bt3[0];
    }


    function getLength() public constant returns (uint ) {
        return bt2.length;
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
