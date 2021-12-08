// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract Array {

uint[] public seri;


function set(uint i) public {

    seri.push(i);
}

//Tüm seri
function get() public view returns (uint[] memory){

    return seri;
}

//Serinin istenilen sıradaki elemanı
function get2(uint i) public view returns (uint){

    return seri[i];
}



}
