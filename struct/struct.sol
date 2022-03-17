// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract SaveStudent{


    struct Student {
        uint id;
        uint class;
        string name;
   
    }

    
Student[] public students;  

function addStudent(uint _id, uint _class,string memory _name ) public {

    students.push(Student({id: _id, class: _class, name: _name}));
}

/*
function addStudent(uint _id, uint _class,string memory _name ) public {

    students.push(Student(_id, _class, _name));
}
*/
}
