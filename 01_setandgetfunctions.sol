pragma solidity ^0.8.0;

contract SimpleStorage{
    uint256 public favoriteNumber;
    
    //Değişkeni tanımladık
    
    function set(uint256 _favoriteNumber) public {
        favoriteNumber=_favoriteNumber;
        
        //Değişkenin değerini, yeni değerle değiştiriyoruz.
    }
    
    function get() public view returns(uint256) {
        return favoriteNumber;
        
        //Değişkenin değerini döndürüyoruz.
    }
    
    
}

//Credits to https://github.com/smartcontractkit/full-blockchain-solidity-course-py
