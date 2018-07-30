pragma solidity ^0.4.0;

contract Called{
    event logdata(bytes data);

    // 这是一个回退函数, 收到以太币会被调用
    function() public payable {
      emit logdata(msg.data);
    }

    function getBalance() public view returns (uint) {
        return this.balance;
    }

}

contract CallTest{

    constructor() public payable {
    }

    function transferEther(address towho) public returns (bool) {
        towho.transfer(1 ether);
        return true;
    }

}
