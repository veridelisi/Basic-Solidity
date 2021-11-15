pragma solidity ^0.8.0;

contract SimpleStorage{
    uint256 public favoriteNumber;
    
    function set(uint256 _favoriteNumber) public {
        
        favoriteNumber=_favoriteNumber;
    }
    
    function get() public view returns(uint256) {
        return favoriteNumber;
    }
    
    
}
