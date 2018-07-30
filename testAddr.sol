pragma solidity ^0.4.0;

contract TestAddr {

    constructor() public payable {

    }

    // 获取一个账号的余额，注意把地址替换为自己的账号地址
    function testBlance() public constant returns (uint) {
        address a = 0xca35b7d915458ef540ade6068dfe2f44e8fa733c;
        return a.balance;  // wei   1eth = 10e18wei
    }

    // 参看合约地址余额，在创建账号的时候附加一个以太币
    function testSelfBlance() public constant returns (uint) {
        address a = this;
        return a.balance;
    }


    // 地址如何作为参数 ： 注意加上引号
    function balance(address a) public constant returns (uint) {
        return a.balance;
    }

    function testTransfer(address a) public {
        address myAddress = this;

        //  转移1eth  （1eth  = 10^18wei）
        if (myAddress.balance >= 1e18) {

           // 思考谁来支付矿工费呢？  查看一下合约余额
           a.transfer(1e18);
        }

    }
}
