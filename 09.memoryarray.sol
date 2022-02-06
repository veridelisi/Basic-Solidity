//SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;
contract MemoryArrayBuilding {

    struct Item {
        string name;
        string category;
        address owner;
        uint32 zipcode;
        uint32 price;
    }

    Item[] public items;

    mapping(address => uint) public ownerItemCount;

    function getItemIDsByOwner(address _owner) public view returns (uint[] memory ) {
        uint[] memory result = new uint[](ownerItemCount[_owner]);
        uint counter = 0;
        
        for (uint i = 0; i < items.length; i++) {
            if (items[i].owner == _owner) {
                result[counter] = i;
                counter++;
            }
        }
        return result;
    }
}

//https://fravoll.github.io/solidity-patterns/memory_array_building.html
