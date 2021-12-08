// Push operation
pragma solidity ^0.8.3;  
   
// Creating a contract 
contract Types {  
  
    // Defining the array
    uint[] public data; 
    uint[] public data2=[10,20,30]    ;
    
    // Defining the function to push 
    // values to the array
    function array_push() public {  
    
        data.push(60);  
        data.push(70);  
        data.push(80);
    
          
    }  

    function array_push2() public {  
    
        data2.push(90);  
        data2.push(560);  
        data2.push(8320);
    
          
    }  


    
}
