// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract StateVariables {


    // State Variables
    int age = 40; 
    int private privateAge = 40; 
    int publicAge = 40;
    int constant CONSTANT_AGE = 40; 
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
//Local and State Variables
//These variables are declared outside of functions (like the attributes of a class) and are stored permanently in the Ethereum blockchain.
//State variables are stored in storage. 
//Local variables are defined inside functions. They are kept in the stack location.
//https://betterprogramming.pub/learn-solidity-variables-part-1-657fc27c2cc1

//Visibility
//private: The state variable is only visible for the contract where it’s defined.
//public: The state variable can be accessed also from outside the contract.
//internal: The state variable is visible for the contract where it’s defined and all other contracts that inherit from it.
//private<internal<public

//Constant Immutable State Variables
//State variables can be declared as constant or immutable. In both cases, the variables cannot be modified after the contract has been constructed. 
//For constant variables, the value has to be fixed at compile-time,
//while for immutable, it can still be assigned at construction time.
//Variables declared as immutable are a bit less restricted than those declared as constant: 
//Immutable variables can be assigned an arbitrary value in the constructor of the contract or at the point of their declaration.
