pragma solidity ^0.4.16;

contract HelloWorld {
    function hello() public pure returns (string) {
        return "Hello World";
    }
}

contract testMsg {
    function msgCall(HelloWorld toAddr) public  returns (string) {
        // 一些其他逻辑
        address addr = toAddr;
        addr.transfer(10);

        // call function
        bytes4 methodId = bytes4(keccak256("hello()"));
        addr.call.gas(30000)(methodId);
        
        return toAddr.hello();

    }
    
}