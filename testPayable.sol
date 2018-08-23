pragma solidity ^0.4.20;

contract testPayable {

    constructor() public payable {

    }

    function () public payable {

    }

    function deposit() public payable {

    }
}

contract call {

    constructor() public payable {
    }

    function testTransfer(address a) public {
        address myAddress = this;
        if (myAddress.balance >= 1e18) {
           a.transfer(1e18);
        }

    }

}
