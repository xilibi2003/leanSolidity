pragma solidity ^0.4.24;  //  0.4.25 - 0.5


// 引入一个合约接口文件： 使用路径及文件名 ./ 表示当前目录
import "./first_interface.sol";

// This is a test Contract

/*
* 作者：Tiny熊@登链
* 版权归登链学院所有
*/


contract SimpleStorage {
    uint storedData;

    event Set(uint value);  // 事件是不需要实现的。
    Circle c;

    // 自定义类型
    struct Circle {
        uint radius;
    }

    // 定义一个函数修改器
    modifier mustOver10 (uint value) {
        require(value >= 10);
        _;
    }

    function set(uint x) public mustOver10(x) {
        storedData = x;
        c = Circle(x);
        emit Set(x);
    }

    function get() public constant returns (uint) {
        return storedData;
    }

}
