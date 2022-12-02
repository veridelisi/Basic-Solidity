// SPDX-License-Identifier:GPL-3.0-or-later
pragma solidity 0.8.15;

contract Blacksmith {
  address public owner = 0xCe71065D4017F316EC606Fe4422e11eB2c47c246;

  function onlyOwner() public{
    require(msg.sender == owner, "Not the owner");
  }
}
