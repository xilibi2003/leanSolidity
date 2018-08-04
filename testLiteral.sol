pragma solidity ^0.4.18;

contract testLiteral{

    function test() public pure returns (int ) {
        return -2e10;
    }

    function test2() public pure returns (uint ) {
        uint a = 5/2 + 5/2;
        return a;
    }

    function testSoBig() public pure returns (uint) {
        return ((2**800 + 1) - 2**800);
    }

    // 数字常量表达式，一旦其中含有非常量表达式，它就会被转为一个非常量类型，不同类型的之间没法进行运算，
    function test3() public {
        uint128 a = 1;   // a 不再是常量类型
          uint128 b = 2.5 + a + 0.5;
    }

    function testEn() public pure returns (string) {
        return "abc";
    }

    function testChinese() public pure returns (string) {
        return "登链科技";
    }

    function testString() public pure returns (string) {
           // "\x61\x62"
        return "Tiny\u718A";
    }

    function hexLiteralBytes() public pure  returns (bytes2, bytes1, bytes1) {
     bytes2 a = hex"aabb";
     return (a, a[0], a[1]);
 }

}
