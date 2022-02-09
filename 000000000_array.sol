// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

/** 
@title: Arrays in Solidity
@author: Engin YILMAZ (veridelisi)
 */

contract Array {
    // Dynamic Array
    uint[] public darray;

    // Dynamic Array with inicial values: darray2
    uint[] public darray2=[0,1,2,3];

    // Dynamic Array with inicial "0" values: darray3
    uint[] public darray3=new uint[](4);

    //Fixed Array


    // Add to element to the dynamic arrays with push()
    function pushDarray(uint item) public  {
        darray.push(item);
    }

    function pushDarray2(uint item) public  {
        darray2.push(item);
    }

    function pushDarray3(uint item) public {
        darray3.push(item);
    }


    // Update the element in dynamic arrays 
    //Don't remember that you must be add elements to the darray before the updating
   function updateDarray(uint index, uint value) public {
        darray[index] = value;
   }

    function updateDarray2(uint index,uint value) public {
       darray2[index] = value;
    }

    function updateDarray3(uint index,uint value) public {
        darray3[index] = value;
    }

    //See all the elements of dynamic arrays
    function seeDarray() public view returns (uint[] memory) {
       return darray;
    }
    function seeDarray2() public view returns(uint[] memory){
        return darray2;
    }
    function seeDarray3() public view returns(uint[] memory){
        return darray3;
    }

    //Delete the last element of dynamic arrays
    function deleteDarray() public {
        darray.pop();
    }
    function deleteDarray2() public {
        darray2.pop();
    }
    function deleteDarray3() public {
        darray3.pop();
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

