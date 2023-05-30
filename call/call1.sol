// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract CrossContract {
  

    function getLowerPrice(address _priceOracle1, address _priceOracle) external view returns (uint256) {
    
      if(PriceOracle1(_priceOracle1).price() < PriceOracle2(_priceOracle2).price()){
            return PriceOracle1(_priceOracle1).price();
              }
        else {
         return PriceOracle2(_priceOracle2).price();
        }
        
         /** Call variable
      if(PriceOracle1(_priceOracle1)._price() < PriceOracle2(_priceOracle2)._price()){
            return PriceOracle1(_priceOracle1)._price();
        }
        else {
         return PriceOracle2(_priceOracle2)._price();
        }
        */
        
    }
}

contract PriceOracle1 {
    uint256 public _price;

    function setPrice(uint256 newPrice) public {
        _price = newPrice;
    }

    function price() external view returns (uint256) {
        return _price;
    }
}

contract PriceOracle2 {
    uint256 public _price;

    function setPrice(uint256 newPrice) public {
        _price = newPrice;
    }

    function price() external view returns (uint256) {
        return _price;
    }
}
