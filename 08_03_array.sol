pragma solidity ^0.8.3;

//Without functions

contract Array{


  uint[] public intergerArray;       //sample showing initialization of an array of integers
  
  bool[] public boolArray;           //sample showing initialization of an array of booleans
  
  address[] public addressArray;     //sample showing initialization of an array of address etc.
  
  int[] public myArray;
  
 
   myArray.push(20);     // add the first element in the array
   myArray[0] = 20;     // update the first element in the array
   
   
   // array that can hold 5 unsigned integers maximum: (One-Dimensional array, fixed size)
   uint[5] public my_dizi;
   
   // Same things array that can hold 5 unsigned integers maximum: (One-Dimensional array, fixed size)
   uint[5] public my_dizi=[1,2,3,4,5];
   uint[] public my_dizi2=[1,2,3,4,5];
   
   // array that can hold  unsigned integers unlimited :(One-Dimensional array, Dynamic Size)
   uint[] public my_dizi2;
   
   //Defining Two-Dimensional arrays
  string[2][] public crypto_names; //we have a dynamic array outright, but its elements are arrays of fixed size (2).
  
        crypto_names.push([“Alice”, “Bob”]);   // generic characters
        crypto_names.push([“Carol”, “Dave”]);  // 3rd and 4th party
        crypto_names.push([“Eve”, “Frank”]);   // Bad guys
        crypto_names.push([“Grace”, “Heidi”]); // others
  
  
  string[][5] public crypto_names2; //we have a fixed array outright, 5 elements, but its elements are arrays of dynamic size .
  
        crypto_names2.push([ “Bob”,“Eve”, “Frank”,"Emre"]);   // generic characters
        crypto_names2.push([“Carol”, “Dave”,“Enee”]);  // 3rd and 4th party
        crypto_names2.push([“Sevil”, “Bob”,“Eve”, “Frank”,"Emre"]);   // generic characters
        crypto_names2.push(["Emre"]);  // 3rd and 4th party
         crypto_names2.push([“Carol”]);  // 3rd and 4th party
  
  // These are temporary arrays and only exists when you are executing a function
  // Must have a fixed size and must be declared inside a function
  // You cannot run a for loop in a memory array
     
    function memoryArray() public {
        uint[] memory newArray = new uint[](10);
    }

}
