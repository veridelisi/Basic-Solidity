//SPDX-License-Identifier: MIT
	pragma solidity ^0.8.0;
	

	 contract A {
	     function foo() virtual public pure returns (string memory) {
	         return "Foo from A";
	     }
	

	     function bor() virtual public pure returns (string memory) {
	         return "Bor from A";
	     }

	 }
	

	 contract B {
	     function foo() virtual public pure returns (string memory) {
	         return "Foo from B";
	     }
	

	     function bor() virtual public pure returns (string memory) {
	         return "Bor from B";
	     }

	    
	 }

 

	  contract C is B{
	     function foo() virtual override public pure returns (string memory) {
	         return B.foo();
	     }
	

	     function bor() virtual override public pure returns (string memory) {
	         return B.bor();
	     }

	    
	 }

	 contract D is C{
	     function foo() virtual override public pure returns (string memory) {
	         return C.foo();
	     }

	     function bor() virtual override public pure returns (string memory) {
	         return C.bor();
	     }
	 
	 }

 contract E is B, A{
	     function foo() virtual override(B,A) public pure returns (string memory) {
	         return super.foo();
	     }
	

	     function bor() virtual override(B,A) public pure returns (string memory) {
	         return super.bor();
	     }
	
	   
	 }
