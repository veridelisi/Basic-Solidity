// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract CrossContract {


    PriceOracle1 priceOracle1;
    PriceOracle2 priceOracle2;

    function callOracleContract( address _p1, address _p2) public {
        priceOracle1 = PriceOracle1(_p1);
        priceOracle2 = PriceOracle2(_p2);
    }

    
    function getLowerPrice() external view returns (uint256) {
    
      //Call variable
      if(priceOracle1.price() < priceOracle2.price()){
            return priceOracle1.price();
        }
        else {
         return priceOracle2.price();
        }
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
