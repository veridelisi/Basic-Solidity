// SPDX-License-Identifier: Unlicensed
pragma solidity ^0.8.11;


contract Functions {

    uint public number = 7;
    uint public number2= 9;

    function showNumber() public view returns(uint) {
        return number;
    }

    function showNumber2() public view returns(uint sum){
        return sum=number+number2;
    }


   
    function changeNumber(uint _number) public  returns(uint) {
        return number=_number;

    }


    function manuelChangeNumber() public  pure returns(uint newNumber ){
        return newNumber=6;
    }

    function addNumber() public  pure  returns(uint x, uint y, uint z){

        return(10,12,13);
    }

    function getSum(uint number3, uint number4) public pure returns(uint sum) {
         return sum = number3 + number4;
    
  }

     function addWithState(uint y) public view returns (uint) {
        return number + y;
    }

    function addWithoutState(uint i, uint j) public pure  returns (uint) {
        return i + j;
    }
    
 

}
   
    
