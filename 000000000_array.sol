// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

contract Array {
    // Flexible Array
    uint[] public array;
    uint[] public array2 = [1, 2, 3];

    // Fixed sized array
    uint[5] public fixArray=[uint(7),8,9,10,11];
    uint[] public fixArray2=new uint[](5);
    
// Get element from array
    function get(uint i) public view returns (uint) {
        return array[i];
    }

    function get2(uint i) public view returns (uint) {
        return array2[i];
    }

    function get3(uint i) public view returns (uint) {
        return fixArray[i];
    }

    function get4(uint i) public view returns (uint) {
        return fixArray2[i];
    }

    // Get all elements from array
    function getArr() public view returns (uint[] memory) {
        return array;
    }

    function getArr2() public view returns (uint[] memory) {
        return array2;
    }

     function getArr3() public view returns (uint[5] memory) {
        return fixArray;
    }


     function getArr4() public view returns (uint[] memory) {
        return fixArray2;
    }

// Add element
    function push(uint i) public {
        // Append to array
        // This will increase the array length by 1.
        array.push(i);
    }

    function push2(uint i) public {
        // Append to array
        // This will increase the array length by 1.
        array2.push(i);
    }

    

      function push4(uint i) public {
        // Append to array
        // This will increase the array length by 1.
        fixArray2.push(i);
    }

// delete element
    function pop() public {
        // Remove last element from array
        // This will decrease the array length by 1
        array.pop();
    }

    function pop2() public {
        // Remove last element from array
        // This will decrease the array length by 1
        array2.pop();
    }



    function pop4() public {
        // Remove last element from array
        // This will decrease the array length by 1
        fixArray2.pop();
    }

    //get length

    function getLength() public view returns (uint) {
        return array.length;
    }

    function getLength2() public view returns (uint) {
        return array2.length;
    }

    function getLength3() public view returns (uint) {
        return fixArray.length;
    }

     function getLength4() public view returns (uint) {
        return fixArray2.length;
    }
    
}
//Source : https://solidity-by-example.org/array/
