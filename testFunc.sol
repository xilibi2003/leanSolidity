pragma solidity ^0.4.18;

contract TestFunc {

  function a(uint x) external returns (uint z) {
    return x * x;
  }

  function b(uint x) external returns (uint z) {
    return 2 * x;
  }

  //  变量f 可以被赋值为函数a 或 函数b
  function select(function (uint) external returns (uint) f, uint x) external returns (uint z) {
     return f(x);
  }

  // 函数作为返回值的类型
  function getfun() public view returns (function (uint) external returns (uint) ) {
      return this.b;
  }


  function callTest(bool useB, uint x) external returns (uint z) {
    // 变量f 可以被赋值为 函数a 或 函数b
    function (uint) external returns (uint) f;
    if (useB) {
        f  = this.b;
    } else {
        f = this.a;
    }
    return f(x);
  }


  // 0x26121ff0
   function f() public view returns (bytes4) {
        return this.f.selector;
   }

}
