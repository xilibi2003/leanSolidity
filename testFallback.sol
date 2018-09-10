pragma solidity ^0.4.0;

contract Test {

    uint public x;
    // 由于没有payable ， 向这个合约转账会有异常。
    function() public { x = 1; }
}

contract Caller {

    constructor() public payable {
    }

    function callTest(address test) public {
        test.call(0xabcdef01); // 不存在的hash

        // 无法编译，通过其他方式发送则失败
        // test.send(2 ether);


    }
}
