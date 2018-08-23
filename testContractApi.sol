pragma solidity ^0.4.20;

contract testContract {

    address owner;

    constructor() {
        owner = msg.sender;
    }

    function hello() public view returns (string) {
        return "hello";
    }

    function kill() public {
      require(msg.sender == owner);
      selfdestruct(owner);  // 销毁合约
    }

    function innocence() public {
        selfdestruct(owner);  // 销毁合约
    }
}

contract testCall {

    function hello() public view returns (string) {
        return "hello";
    }

    function call(address a) {
        a.delegatecall(bytes4(sha3("innocence()")));
    }
}
