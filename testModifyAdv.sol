pragma solidity ^0.4.20;

contract Mutex {

    bool public locked;

    modifier noReentrancy() {
        require(!locked);
        locked = true;
        _;
        locked = false;
    }

    // 防止递归调用
    // return 7 之后，locked = false 依然会执行

    function f() public noReentrancy returns (uint) {
        return 7;
    }
}

//  运行test1()之后，状态变量a的值是多少
contract modifysample {
    uint a = 10;

    modifier mf1 (uint b) {
        uint c = b;
        _;
        c = a;
        a = 11;
    }

     modifier mf2 () {
        uint c = a;
        _;
    }

    modifier mf3() {
        a = 12;
        return ;
        _;
        a = 13;
    }

    function test1() mf1(a) mf2 mf3 public   {
        a = 1;
    }

    function get_a() public constant returns (uint)   {
        return a;
    }
}
