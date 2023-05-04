// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract Base {

     uint256 internal _value=99;
     uint256 public _value2=100;

     function comeExternal() external pure returns(uint256){
         return 55;
     }

                 }


contract External {

    Base base = new Base();

    function reachToBase() public view returns(uint256){
    return base.comeExternal();


}

                     }


 contract Internal is Base {

     function reachBase() public view returns(uint256){
      return _value;
     }

     function changeBase(uint256 newValue)  public  {
         _value=newValue;
     }

     function reachBase2() public view returns(uint256){
      return _value2;
     }

     function changeBase2(uint256 newValue2) public {
         _value2=newValue2;
     }


 }                    





