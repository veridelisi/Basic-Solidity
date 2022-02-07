// SPDX-License-Identifier: MIT
//https://veridelisi.medium.com/inheritance-in-constructor-in-solidity-a5e34f4c7b27

pragma solidity ^0.8.6;

contract ParentConstructor{

uint256 public parentValue;

constructor(uint256 _parentValue)
{
parentValue = _parentValue;
}
}

contract ChildConstructor is ParentConstructor(300){
uint256 public childState;

constructor(uint256 childValue)
{
childState = childValue;
}
}
