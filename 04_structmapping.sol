// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

contract SimpleStorage {
    
    
    uint256 favoriteNumber;

    
    struct People {
        uint256 favoriteNumber;
        string name;
    }
    
   
    mapping(string => uint256) public nameToFavoriteNumber;
    
    //Mapping tanımlanıyor. String:key, uint256:value
    
    
    function addPerson(string memory _name, uint256 _favoriteNumber) public{
    
       
        nameToFavoriteNumber[_name] = _favoriteNumber;
        
        //Yeni eklenen favoritenumbers'ı mapping [name] e atıyoruz. 
        
        
    }    
    
    
    
}


