//source:https://solidity-by-example.org/mapping/
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.3;

contract NestedMapping {
    // Nested mapping (mapping from address to another mapping)
    mapping(address => mapping(uint => uint)) public dolartl;


    function set(address _addr1,uint _dolar, uint _tl) public {
       dolartl[_addr1][_dolar] = _tl;
    }

    function remove(address _addr1, uint _dolar) public {
        delete dolartl[_addr1][_dolar];
    }
}

contract Mapping {
    mapping(address => bool) public registered;
    mapping(address => int256) public favNums;

    function register(int256 _favNum) public {
       
        require(!isRegistered(), "User also is registered");
        registered[msg.sender] = true;
        favNums[msg.sender] = _favNum;
    }

    function isRegistered() public view returns (bool) {
        return registered[msg.sender];
    }

    function deleteRegistered() public {
        require(isRegistered(), "Please register.");
        delete (registered[msg.sender]);
        delete (favNums[msg.sender]);
    }
}
