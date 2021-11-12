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
        
        return (instructors[_instructor_address].age,    instructors[_instructor_address].first_name, instructors[_instructor_address].last_name);
    }
}
//https://jeancvllr.medium.com/solidity-tutorial-all-about-structs-b3e7ca398b1e
