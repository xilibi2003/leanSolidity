pragma solidity ^0.4.24;

contract testAbi {

    uint storedData;

    function set(uint x) public {
        storedData = x;
    }

    function abiEncode() public constant returns (bytes) {
        return abi.encode(1, 2);  // 计算set(uint x) 的ABI编码
        // return abi.encodePacked(1, 2);
        // return abi.encodeWithSignature("set(uint256)" ,1); //计算函数ABI编码
    }

}
