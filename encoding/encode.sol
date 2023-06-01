// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.19;

contract Decoder {
    /* This exercise assumes you know how abi decoding works.
        1. In the `decodeData` function below, write the logic that decodes a `bytes` data, based on the function parameters
        2. Return the decoded data
    */
     function encodeData (string memory text, uint256 number) public pure returns(bytes memory b){
        return b = abi.encode (text, number);
     }

    function decodeData( bytes memory _data) public pure returns (string memory x, uint256 y) {
        (x,y) = abi.decode(_data, (string, uint256));
    }
}
