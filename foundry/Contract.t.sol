// SPDX-License-Identifier:GPL-3.0-or-later
pragma solidity 0.8.15;

import "forge-std/Test.sol";
import "src/Contract.sol";

contract MainContractTest is Test {
    MainContract public maincontract;
    address alice;

    function setUp() public {
    maincontract = new  MainContract();
    alice = vm.addr(1);
    }

    function testMainContract() public {
    assertEq(address(this), address(maincontract));
    }

    function testMainContractOwner() public {
    assertEq(address(this), maincontract.owner());
    }

    function testOwnerAlice() public {
    assertEq(maincontract.owner(),alice);
    }

    function testOwnerSender() public {
    assertEq(address(this),msg.sender);
    }

}
