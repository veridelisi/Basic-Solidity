//SPDX-License-Identifier: MIT
	pragma solidity ^0.8.0;
	

	 contract A {
	     function foo() virtual public pure returns (string memory) {
	         return "Foo from A";
	     }
	

	     function bor() virtual public pure returns (string memory) {
	         return "Bor from A";
	     }
	

	     function a() virtual public pure returns (string memory) {
	         return "special A";
	     }
	 }
	

	 contract B {
	     function foo() virtual public pure returns (string memory) {
	         return "Foo from B";
	     }
	

	     function bor() virtual public pure returns (string memory) {
	         return "Bor from B";
	     }
	

	     function b() virtual public pure returns (string memory) {
	         return "special b";
	     }
	 }

 contract C is B, A{
	     function foo() virtual override public pure returns (string memory) {
	         return super.foo();
	     }
	

	     function bor() virtual override public pure returns (string memory) {
	         return super.bor();
	     }
	

	     function c() virtual public pure returns (string memory) {
	         return "special c";
	     }
	 }
