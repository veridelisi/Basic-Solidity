// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract Contract1 {

    struct MyStruct {
        string name;
        uint age;
        bool isMan;
    }


    MyStruct struct1 = MyStruct("Engin",40,true);
    MyStruct struct2 = MyStruct("Filiz",40,false);
    MyStruct struct3= MyStruct("Emre",35,true);
    
    //Struct'a değer eklemek için en basit yol budur

 

    function getNameFromStruct() public view returns (string memory ) {
        return struct1.name;
    }

    function getNameFromStruct2() public view returns (string memory) {
        return struct2.name;
    }

    function demoStruct4() public pure returns (string memory) {
      MyStruct memory struct4 = MyStruct("Su",4,false);
       
        return struct4.name;
        
    }
    

}


