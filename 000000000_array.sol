// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.11; 
   
contract MyContract1 {
    //First Array
    uint[5] public myArray;
    
    //Second Array
    uint[] public myArray2= new uint[](5);

    function  MyContractFirstArray() public view returns(uint) {
       return  myArray.length ;
    }

    function  MyContractSecondArray() public view returns(uint) {
       return  myArray2.length ;
    }

}
