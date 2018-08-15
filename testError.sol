pragma solidity ^0.4.20;

contract testError {

    function testdiv(uint x, uint y) public {
        require(x > y);

        assert(x >= x/y);

        if (x/y == 1) {
            revert();
        }
    }
}
