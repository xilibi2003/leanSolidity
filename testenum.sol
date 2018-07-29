pragma solidity ^0.4.0;

contract TestEnum {

    // 使用枚举自定义一个类型 ActionChoices
    enum ActionChoices { GoLeft, GoRight, GoStraight, SitStill }

    // 定义一个ActionChoices类型的变量
    ActionChoices choice;

    ActionChoices defaultChoice = ActionChoices.GoStraight;

    function setGoStraight() {
        choice = ActionChoices.GoStraight;
    }

    function getChoice() returns (ActionChoices) {
        return choice;
    }

    function getDefaultChoice() public constant returns (uint) {
        return uint(defaultChoice);
    }
}
