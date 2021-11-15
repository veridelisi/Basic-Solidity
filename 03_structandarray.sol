// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

contract Contract1{
    
    // this will get initialized to 0!
    uint256 public favoriteNumber;
   
    
    struct People {
        uint256 favoriteNumber;
        string name;
    }
    
    People[] public people;
   
    
    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }
    
    function retrieve() public view returns(uint256) {
        return favoriteNumber;
    }
    
    function addPerson(string memory _name, uint256 _favoriteNumber) public{
        people.push(People(_favoriteNumber, _name));
        
    }    
    
}
