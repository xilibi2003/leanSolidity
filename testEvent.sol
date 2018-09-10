pragma solidity ^0.4.24;

contract testEvent {

    constructor() public payable {
    }

    event Deposit(address _from, uint _value);


    function deposit() public payable {
        emit Deposit(msg.sender, msg.value);
    }
}

contract testEvent2 is testEvent {

    function deposit2() public payable {
        emit Deposit(msg.sender, msg.value);
    }
}
