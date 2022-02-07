//SPDX-License-Identifier:MIT
pragma solidity ^0.8.5;


contract SomeContract{
    uint256 public intVal;
    string public stringVal;

    //this one modifies other contract's storage variables
    function simpleCall(address otherContract,uint256 setInt,string memory setString) public {
        (bool succes,)=otherContract.call(abi.encodeWithSignature("setVal(uint256,string)",setInt,setString));
        require(succes,"call failed");
    }

    //this one modifies some contract's storage variables
    function simpleDelegatecall(address otherContract,uint256 setInt,string memory setString) public {
        (bool succes,)=otherContract.delegatecall(abi.encodeWithSignature("setVal(uint256,string)",setInt,setString));
        require(succes,"delegatecall failed");
    }

    //this one fails, staticcall can't modify storage
     function simpleStaticcall(address otherContract,uint256 setInt,string memory setString) public {
        (bool succes,)=otherContract.staticcall(abi.encodeWithSignature("setVal(uint256,string)",setInt,setString));
        require(!succes,"staticcall somewhat failed");
    }
}


contract OtherContract{
    uint256 public intVal;
    string public stringVal;

    function setVal(uint256 setInt,string calldata setString) public {
        intVal = setInt;
        stringVal = setString;
    }

}
