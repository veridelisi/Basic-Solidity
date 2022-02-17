// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.11;


contract ProxyContractWithCallNoStorage {
    address public proxiedAddress;

    constructor(address _realAddress){
        proxiedAddress = _realAddress;
    }

    fallback() external payable{

        (bool s, ) = proxiedAddress.call(msg.data);
        require(s);
    }

    function returnHex() external pure returns(bytes memory){
        return abi.encodeWithSignature("setTest(uint256)",11);
    }


    receive() external payable{

    }
}


contract RealContract {
    uint256 public test;
    

    function setTest(uint256 val) external{
        test = val;
    }

   

}
