// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;


//@title: Arrays in Solidity | @author: Engin YILMAZ (veridelisi)
 

contract Array {
    //DYNAMIC ARRAY
    //Dynamic Array
    uint[] public darray;

    // Dynamic Array with inicial values: darray2
    uint[] public darray2=[0,1,2,3];

    // Dynamic Array with inicial "0" values: darray3
    uint[] public darray3=new uint[](4);


    //FIXED ARRAY
    //Fixed Array
    uint[3] public farray;

    //Fixed Array with values : farray2
    uint[3] public farray2=[uint(1),2,3];

    

    //Dynamic Array
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


    //Dynamic Array
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

    //Fixed Array
    // Update the element in fixed arrays 
    function updateFarray( uint index, uint value) public {
        farray[index]=value;
    }

    function updateFarray2(uint index, uint value) public {
        farray2[index]=value;
    }

    

    //Dynamic Array
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
    

    //Fixed Array
    //See all the elements of fixed arrays
    //farray is a fixed-sized array, and so for seeFarray() to be able to return it, the data type of the return value needs to be defined as 
    //Don't forget that you must indicate array length in returns as  uint[3] memory

    returns(uint[5] memory)
    function seeFarray() public view returns (uint[3] memory){
        return farray;
    }

    function seeFarray2() public view returns (uint[3] memory){
        return farray2;
    }



    //Dynamic Array
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


 }

