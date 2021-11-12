// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract StateVariables {

//These variables are declared outside of functions (like the attributes of a class) and are stored permanently in the Ethereum blockchain.
//https://betterprogramming.pub/learn-solidity-variables-part-1-657fc27c2cc1

//Visibility
//private: The state variable is only visible for the contract where it’s defined.
//public: The state variable can be accessed also from outside the contract.
//internal: The state variable is visible for the contract where it’s defined and all other contracts that inherit from it.
//private<internal<public

   
    
    // State Variables
    int age = 40; // by default its qualifiers is 'internal'
    int private privateAge = 40; 
    int publicAge = 40;
    int constant CONSTANT_AGE = 40; // by default its qualifiers is 'internal'
    int constant CONSTANT_AGE_2 = 40;
    int constant CONSTANT_AGE_3 = 40;

    function getInternalAge() public view returns (int) {        
        return age;
    }    
    function getPrivateAge() public view returns (int) {        
        return privateAge;
    }    
    function getPublicAge() public  view returns (int) {        
        return publicAge;
    }    
    function getConstantAge() public pure returns (int) {        
        return CONSTANT_AGE;
    } 
    function getConstantAge2() public pure returns (int) {        
        return CONSTANT_AGE_2;
    } 
    function getConstantAge3() public pure returns (int) {        
        return CONSTANT_AGE_3;
    }    
}
