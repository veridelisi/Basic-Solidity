// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Receiver {

    event Received(address caller, uint amount, string message);

    fallback() external payable {
        emit Received(msg.sender, msg.value, "I'm fallback function in Receiver Contract. You call a function that does not exist and the Fallback function start to work");
    }

    function YouCanCallMe(string memory _message, uint _x) public payable returns (uint) {

    emit Received(msg.sender, msg.value, _message);

        return _x + 1;
    }
}

contract Caller {
    event Response(bool success, bytes data);

    // Let's imagine that contract Caller does not have the source code for the
    // contract Receiver, but we do know the address of contract Receiver and the function to call.
    function testCall(address payable _addr) public payable {
        // You can send ether and specify a custom gas amount
        (bool success, bytes memory data) = _addr.call{value: msg.value, gas: 5000}(
            abi.encodeWithSignature("YouCanCallMe(string,uint256)", "Call Me Baby", 1)
        );

        emit Response(success, data);
    }

    // Calling a function that does not exist triggers the fallback function.
    function testCallDoesNotExist(address _addr) public payable {
        (bool success, bytes memory data) = _addr.call{value: msg.value, gas: 5000}(
            abi.encodeWithSignature("TouCanCallMe(string,uint256)", "Call Me Baby", 1)
        );

        emit Response(success, data);
    }
}
