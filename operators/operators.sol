// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract Operator {
  

    function left( uint a, uint b ) public pure returns(uint ){
        return a<<b;
        //a * 2**b
        // for example a=40 b=2        2**2=4    40*4=160  
    }

    function right( uint a , uint b) public pure returns(uint) {
        return a>>b;
        // a / 2**b
        // for example  a=40 b=2       2**2=4     40/4=10
    }

    
}
