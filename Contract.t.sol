// SPDX-License-Identifier:GPL-3.0-or-later
pragma solidity 0.8.15;

import "forge-std/Test.sol";
import "src/Contract.sol";

contract BlacksmithTest is Test {
    Blacksmith public blacksmith;
    address alice;

    function setUp() public {
    blacksmith = new Blacksmith();
    alice = vm.addr(1);
    console.log("Alice address",alice);
    console.log("Contract address",address(this));
    console.log("Blacksmithaddress",address(blacksmith));
    
    }

    function testBlackSmith() public {
    assertEq(address(this), address(blacksmith));
    
    }

    function testBlackSmithOwner() public {
    assertEq(address(this), blacksmith.owner());
    
    }

    function testOwnerAlice() public {
    assertEq(blacksmith.owner(),alice);
   
    }

}
