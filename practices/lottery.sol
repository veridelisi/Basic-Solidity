// SPDX-License-Identifier: GPL-3.0
//https://dineshaitham.hashnode.dev/building-a-mini-lottery-system-on-ethereum-with-solidity
pragma solidity >=0.8.0 <0.9.0;

contract Lottery{
    address public manager;
    constructor(){
        manager = msg.sender;
    }
    address payable[] public participants;
    receive() external payable{
        require(msg.value==1 ether);
        participants.push(payable(msg.sender));
    }
    function random() public view returns(uint){
        return uint(keccak256(abi.encodePacked(block.difficulty,block.timestamp,participants.length)));
    }
    function getBal() public view returns(uint){
        require(msg.sender==manager);
        return address(this).balance;
    }

    function selectWinner() public{
        require(msg.sender==manager);
        require(participants.length>=3);

        uint randWin = random();
        address payable winner= participants[randWin % participants.length];
        winner.transfer(getBal());
        participants = new address payable[](0);
    }
