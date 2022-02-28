//SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.11;
// Thanks to Deniz

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract TestToken is ERC20
{
    constructor(string memory name, string memory symbol)  ERC20(name,symbol)
    {
        _mint(msg.sender, 1000);
    }
}
