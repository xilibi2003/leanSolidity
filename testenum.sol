pragma solidity ^0.4.0;

contract test {

    // 使用枚举自定义一个类型 ActionChoices
    enum ActionChoices { GoLeft, GoRight, GoStraight, SitStill }

    // 定义一个ActionChoices类型的变量
    ActionChoices choice;
    
    ActionChoices constant defaultChoice = ActionChoices.GoStraight;

    function setGoStraight() {
        choice = ActionChoices.GoStraight;
    }
    
    function getChoice() returns (ActionChoices) {
        return choice;
    }

    function getDefaultChoice() returns (uint) {
        return uint(defaultChoice);
    }
}