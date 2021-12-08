// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract Array {

uint[] public seri;

//Add elements
function set(uint i) public {

    seri.push(i);
}

//Get all array
function get() public view returns (uint[] memory){

    return seri;
}

//Get spesific element
function get2(uint i) public view returns (uint){

    return seri[i];
}

//Remove the last element
function pop() public {
    
        seri.pop();
    }
    
//Lenght of the array
function getLength() public view returns (uint) {
        return seri.length;
    }


}
