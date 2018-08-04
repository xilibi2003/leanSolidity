pragma solidity ^0.4.24;

contract testArr {

    uint [10] tens;
    uint [] us;

    uint [] public u = [1, 2, 3];   // 生成函数
    uint[] public b = new uint[](7);  //storage


    function get() public view returns (uint) {
        tens[0] = 1;
        return tens[0];
    }

    uint[][5] public a;
    function setA() public  {
        a[1] =  [1,2];
        a[2] =  [1,2,3];
       //  a[6] =  [1,2,3];
    }

    function getLen() public view returns (uint) {
        return tens.length;
    }

    function modifyLenAndPush() public returns (uint) {
       b.length = 10;      //可以修改storage的数组

       b[7] = 100;
       b.push(20);
       // tens.push(10);


       uint[] memory a = new uint[](7);
    //   a.push(10);
    //   a.length = 10;

       return b.length;
   }


}
