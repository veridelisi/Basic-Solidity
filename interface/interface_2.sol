//SPDX-License-Identifier: MIT
	pragma solidity ^0.8.11;
	

interface IBase{
    function setA(uint256) external;
}

contract BaseContract is IBase{
    uint256 public test;

    function setA(uint256 _a) 
    override // Throws an error, if this keyword is not included !!
    external{
        test=_a;
    }
}

contract C1_Loader{
    IBase public cAddress;
    BaseContract public newBase;

    constructor(address _cAddr){
        cAddress = IBase(_cAddr);
        // IBase created = new IBase(); // Cannot instantiate an interface.
        newBase = new BaseContract(); 
    }   

    function setAOnBase() external{
        cAddress.setA(15);
        newBase.setA(7);
    }

}
