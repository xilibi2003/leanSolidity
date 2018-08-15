pragma solidity ^0.4.20;

contract owned {
    function owned() public { owner = msg.sender; }
    address owner;


    // 定义了一个函数修改器，可被继承
    //  修饰时，函数体被插入到 “_;” 处
    // 不符合条件时，将抛出异常
    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }
}

contract testModifty is owned {

    modifier over18(uint age) {
        if (age >= 18) {
            _;
        }
    }

    function kill(uint age) public onlyOwner over18(age) {
        selfdestruct(owner);
    }

}
