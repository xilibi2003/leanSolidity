pragma solidity ^0.4.18;

contract testLiteral{
    function interLiteral() public pure returns (uint, uint) {
        return ((2**800 + 1) - 2**800,  0.5*8);
    }

    function test2() public pure returns (uint ) {
        uint a = 5/2 + 5/2;
        return a;
    }

    // 数字常量表达式，一旦其中含有非常量表达式，它就会被转为一个非常量类型，不同类型的之间没法进行运算，
    function test3() public {
        uint128 a = 1;   // a 不再是常量类型
        uint128 b = 2.5 + a + 0.5;
    }

    function testString() public pure returns (string) {
           // "\x61\x62"
        return "Tiny\u718A";
    }

    function hexLiteralBytes() public returns (bytes2, bytes1, bytes1) {
     bytes2 a = hex"aabb";
     return (a, a[0], a[1]);
 }

}
