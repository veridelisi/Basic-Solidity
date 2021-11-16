// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Contract1{
    
    
    uint256 public favoriteNumber;
   
    
    struct People {
        uint256 favoriteNumber;
        string name;
    }

    
    function addPerson(string memory _name, uint256 _favoriteNumber) public{
        People.favoriteNumber=_favoriteNumber;
        People.name=_name;
        
        //Struct'a ekleme yapmak için en yalın yol
 
    }    
    
}
