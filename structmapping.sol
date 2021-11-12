// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract Course {
    
    struct Instructor {
        uint age;
        string first_name;
        string last_name;
    }
    
    mapping(address => Instructor) instructors;
    
    function getInstructorInfos(address _instructor_address) public view returns (uint, string memory, string memory) {
        
        uint _age = instructors[_instructor_address].age;
        string memory _first_name = instructors[_instructor_address].first_name;
        string memory _last_name = instructors[_instructor_address].last_name;
        
        return (_age, _first_name, _last_name);
    }
}
//https://jeancvllr.medium.com/solidity-tutorial-all-about-structs-b3e7ca398b1e
