//SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;



contract Bank {

  mapping( address => uint256 ) balances;
     

  function deposit() public payable {
      balances[msg.sender] += msg.value;     
      
  }

  function see() public view returns (address){
        return msg.sender;
    }

   function getBalance() public view returns(uint256){
        return msg.sender.balance;
    }

    function getBalance2() public view returns(uint256){
        return address(this).balance;
    }


  function withdraw_via_transfer(uint256 amount) public {
      // forwards 2300 gas, not adjustable
      require(address(this).balance >= amount, "Invalid withdraw request");
      payable(msg.sender).transfer(amount);
       balances[msg.sender] += amount;
       
  }

  function withdraw_via_send(uint256 amount) public {
      // forwards 2300 gas, not adjustable
      // returns success condition
      // fails if stack depth is at 1024
      require(address(this).balance >= amount, "Invalid withdraw request");
      bool sent = payable(msg.sender).send(amount);
      require(sent, "Failed to send Ether");
       balances[msg.sender] += amount;
     
  }

  function withdraw_via_call(uint256 amount) public {
      // forwards all available gas
      // returns success condition and data
      require(address(this).balance >= amount, "Invalid withdraw request");
      // (bool sent, bytes memory _data) = msg.sender.call.value(amount}("");
      (bool sent, bytes memory _data) = msg.sender.call{value: amount}("");
      require(sent, "Failed to send Ether");
      balances[msg.sender] += amount;
     
  }
}
