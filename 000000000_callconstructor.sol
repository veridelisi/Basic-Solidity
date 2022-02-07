//https://veridelisi.medium.com/inheritance-in-constructor-in-solidity-a5e34f4c7b27
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.11;

contract EmptyAsReference{
    // 67066
}

// Call constructor from outside
contract C1_BasicConstructor {
    uint256 public stateVar;
    constructor(uint256 _newState) {
        stateVar = _newState;
    }
}
// Call constructor from inside
contract C2_CallConstructorFromSC {
    C1_BasicConstructor public newContract;
    constructor(uint256 _newState) {
        newContract = new C1_BasicConstructor(_newState);
    }
}
