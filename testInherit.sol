pragma solidity ^0.4.20;

contract base {
    function privateHello()  private {
    }

    function internalHello()  internal {
    }

    function externalHello()  external {
    }

    function publicHello()  public {
    }
}

contract Sub is base {

    function hello() {
        internalHello();
    }

}
