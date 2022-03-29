// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

contract students {

//from class address to students' number
mapping(address => uint) public class;

// from student's name to his age
mapping(string => uint ) public student;


// from student's name and his class number to his exam success position
mapping(string => mapping(uint => uint)) public studentposition;

//add class address and students' number
function addClass(address classAddress, uint studentsnumber) public {
         class[classAddress]=studentsnumber;
}

//add student's name and his age
function addStudent(string memory name, uint age )public {
        student[name]=age;
}
// add student's name and his class number and his exam success position
function addStudentPosition( string memory studentname, uint studentnumber, uint position) public {
    studentposition[studentname][studentnumber]=position;
}

}
