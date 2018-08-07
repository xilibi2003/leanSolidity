pragma solidity ^0.4.24;

import "./iterable_mapping.sol";


contract TestMapping {

    //  生成对应函数
    mapping(address => uint) public balances;

    function update(uint newBalance) public {
        balances[msg.sender] = newBalance;
    }

    function test() {
       mapping(address => uint) a;
    }

    IterableMapping.itmap data;

    function insert(uint k, uint v) public returns (uint size) {
        IterableMapping.insert(data, k, v);
        return data.size;
    }

    function sum() public returns (uint s) {
        for (uint i = IterableMapping.iterate_start(data); IterableMapping.iterate_valid(data, i); i = IterableMapping.iterate_next(data, i))
        {
            uint key;
            uint value;
            (key, value) = IterableMapping.iterate_get(data, i);
            s += value;
        }
    }
}
