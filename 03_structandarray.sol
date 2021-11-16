// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

contract Contract1{
 
    
    struct People {
        uint256 favoriteNumber;
        string name;
    }
    
    
    
    People[] public people;
    
    //Struct'ı array haline getirdik.
   

    
    function addPerson(string memory _name, uint256 _favoriteNumber) public{
        people.push(People(_favoriteNumber, _name));
        
        //Array'e push metoduyla ekleme yapıyoruz
        
    }    
    
}
