//SPDX-License-Identifier: MIT
	pragma solidity ^0.8.11;
	

	 contract A {
	     function foo()  virtual public pure returns (string memory) {
	         return "Foo from A";
	     }
	

	     function bor()  public pure returns (string memory) {
	         return "Bor from A";
	     }

	 }
	

	 contract B is A {
	     function foo()  override public pure returns (string memory) {
	         return "I override the Contract A's foo function";
	     }
	

	     function bor2()  public pure returns (string memory) {
	         return "Bor from B";
	     }

	    
	 }
