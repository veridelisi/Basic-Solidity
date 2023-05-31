// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

contract EnCodeDeCode {

  //encode
  function enCode(address _address, uint number) public pure returns(bytes memory){
      return (abi.encode(_address, number));
  }
  //decode
  function deCode(bytes memory data) public pure returns(address _address, uint _number){
      (_address, _number) = abi.decode(data, (address, uint));
  }

}
