// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract EnumDemo {

    // enum representing shipping status
    enum Status { Pending, Shipped, Accepted, Rejected, Canceled }   

    // default value of an enum is its first element, in this case "Pending"
    Status public status;  

    // update status using enum Status type parameter
    function update(Status _status) public {
        status = _status;
    }

    // update with a specific enum member
    function cancel() public {
        status = Status.Canceled
    }
}
