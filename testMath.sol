pragma solidity ^0.4.20;

contract testMath {

      function testAddmod() public view returns (uint) {
          uint x = 2**256 - 1;
          uint y = 1;
          uint k = 100;

          return addmod(x , y, k);
          // return (x + y) % 100;

          // return mulmod(2**256 - 1 , 2**256 - 1, 100);
      }

    function testsha3() public view returns (bytes32) {
        return keccak256("set(uint256)");
    }

}
