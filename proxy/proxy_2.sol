// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.11;


contract Proxy {

    uint256 public number;
    address public proxyAddress;
    function setProxyAddr(address _proxy) external {
        proxyAddress = _proxy;
    }

    function decode(bytes memory _output) external pure returns(bytes memory, uint, bool){
        return abi.decode(_output, (bytes, uint, bool));

    }

    fallback (bytes calldata input) external returns(bytes memory){
        (bool success, bytes memory returnData) = proxyAddress.delegatecall(msg.data);
        require(success);
        return returnData;
    }
}

contract LogicContract{
    uint256 public number; // Storage is same with the proxy

    function changeUint(uint256 _n) external returns(bytes memory, uint, bool){
        number = _n;

        return("Hello World", 100, true);
    }
}
