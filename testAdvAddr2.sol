pragma solidity ^0.4.0;

contract Called {
    uint public n;
    address public sender;

    function setN(uint _n) {
        n = _n;
        sender = msg.sender;
    }

    event logdata(bytes data);

    function () public payable {
        emit logdata(msg.data);
    }

    function getBalance() public view returns (uint) {
        return this.balance;
    }
}

contract CallTest {
    uint public n;
    address public sender;

    // 只是调用代码，合约环境还是当前合约。
    function delegatecallSetN(address _e, uint _n) {
        bytes4 methodId = bytes4(keccak256("setN(uint256)"));
        _e.delegatecall(methodId, _n);
    }

  function callSetN(address _e, uint _n) {
        bytes4 methodId = bytes4(keccak256("setN(uint256)"));
        _e.call(methodId, _n);
        // _e.call.gas(1000)(methodId, _n);
        // _e.call.gas(1000).value(1 ether)(methodId, _n);
  }

  function callNoFunc(address addr) returns (bool){
      return addr.call("tinyxiong", 1234);
  }

}
