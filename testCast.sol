pragma solidity ^0.4.24;

contract testCast {

    function add() public pure returns (uint) {
        uint8 i = 10;
        uint16 j = 20;

        // i会隐式转换为uint16
        uint16 k = i + j;

        // k会隐式转换为uint256
        return k;
    }

    //
    function force() public pure returns (uint , uint16 ) {
       int8 y = -3;
       uint x = uint(y);  // 0xfffff..fd  (64个16进制数)

       uint32 a = 0x12345678;
       uint16 b = uint16(a);  // b = 0x5678

       return (x, b);
    }

    struct CustomType {
        bool myBool;
        uint myInt;
    }

    function testDel() public view returns (bool, address) {
        bool b = true;
        delete b;  // b = false;

        uint a = 1;
        delete a ; // a =  0

        address addr = msg.sender;
        delete addr ; // addr = 0x0

        bytes  memory bs = "123";
        delete bs; // bs = 0x0

        string memory str = "tiny xiong";
        delete  str; // str = ""

        // 变长数组
        uint[] memory arr = new uint[](7);
        delete arr;  // a.length = 0;

        CustomType memory ct = CustomType(true, 100);
        delete ct;  // ct.myBool = false ; myInt = 0;

        return (b, addr);
    }

    uint data;
    uint[] dataArray;

    function f() public {
      //值传递
        uint x = data;
        delete x;   // 删除x不会影响data
        delete data; // 删除data，同样也不会影响x，因为是值传递，它存的是一份原值的拷贝。

          //引用赋值
        uint[] storage y = dataArray;
        //删除dataArray会影响y，y也将被赋值为初值。
        delete dataArray;
        //报错，因为删除是一个赋值操作，不能向引用类型的storage直接赋值从而报错
        /* delete y; */

    }

    mapping(address=>uint) balances;
    function deleteMap() public {
        // 非法
        // delete balances;
        delete balances[msg.sender];
    }

}
