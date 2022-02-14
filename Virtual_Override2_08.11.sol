 //SPDX-License-Identifier: MIT
	pragma solidity ^0.8.0;
 
 contract A {
	     function foo() virtual public pure returns (string memory) {
	         return "A'nin Foo'su";
	     }
	

	     function bor() virtual public pure returns (string memory) {
	         return "A'nin Bor'u";
	     }
	

	     function a() virtual public pure returns (string memory) {
	         return "special A";
	     }
	 }
	

	 contract B is A{
	     function foo() virtual override public pure returns (string memory) {
	         return "B'nin Foo'su";
	     }
	

	     function bor() virtual override public pure returns (string memory) {
	         return "B'nin Bor'u";
	     }
	

	     function b() virtual public pure returns (string memory) {
	         return "special b";
	     }
	 }
	

	 contract C is B {
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
