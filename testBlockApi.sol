pragma solidity ^0.4.16;

contract called {

    function testCalled() public returns (address addr)  {
        return msg.sender;   // tx.origin;
    }
}

contract testBlockApi {

    function getValue() public returns (address , uint) {
        return (msg.sender, msg.value);
    }

    function diffGas() public returns  ( uint) {
        uint g1 = gasleft();
        uint a = 1 + 2;
        uint g2 = gasleft();

        return g1 - g2;
    }

    function testCall() public returns (address)  {
        return new called().testCalled();
    }

    function testf() public returns (bytes4)  {
        return this.testf.selector;
        // return msg.sig;  //  0xf39581ad
    }

}
