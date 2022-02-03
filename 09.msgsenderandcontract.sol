pragma solidity 0.8.11;
contract Value {
    uint256 public tokenBalance;
    
    constructor() public {
        tokenBalance = 0;
    }
    //dont forget add value to value side before clicking the addvalue
    function addValue() payable public {
        tokenBalance = tokenBalance + (msg.value/10);
    } 
    
    function getTokenBalance() view public returns (uint256) {
        return tokenBalance;
    }

    function getadress() view public returns(address) {
        return address(this);
    }

    function getBalance() public view returns(uint256){
        return msg.sender.balance;
    }
}
