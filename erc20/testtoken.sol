//SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.11;

contract Token  {

mapping(address => uint) public balances;
function transfer(address to, uint value)  public {
    require(balances[to] <= 10000);
    require(balances[to] + value < 10000);
    balances[msg.sender] -= value;
    balances[to] += value;
}

}

contract TestToken is Token {

    address owner = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    address alice = 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2;
    address bob   = 0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db;
    address su    = 0x78731D3Ca6b7E34aC0F824c42a7cC18A495cabaB;

    constructor()  {
        balances[owner] = 10000;
        balances[alice] = 5000;
        balances[bob] =   2500;
        balances[su]=     1000;
    }
  
 

}
