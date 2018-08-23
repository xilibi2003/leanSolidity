pragma solidity ^0.4.24;

library mathlib {

      function plus(uint a, uint b) public returns (uint) {
            uint c = a + b;
            assert(c>=a && c>=b);
            return c;
      }

      function getThis() public returns (address) {
          return this;
      }

}
