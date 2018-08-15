pragma solidity ^0.4.16;

import "./Datetime.sol";

contract testTime {

    using DateTime for uint;

    uint lastTs;


    function currTimeStamp() public view returns (uint256){
        return now;
    }

    function doSomething() public {
        if (now >= lastTs + 1 days) {
            // ...
        }
        lastTs = now;
    }

    function getCurrYearMonth() public view returns (uint, uint) {
        return (now.getYear(), now.getMonth());
    }

}
