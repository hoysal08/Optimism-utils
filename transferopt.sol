// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.0;

contract transferopt{
   

   function transferOPTGOER(address payable _receiver) public payable  returns(bool){
        (bool sent,) = _receiver.call{value: msg.value}("");
        require(sent, "Failed to send Ether");
        return sent;
   }

}

//Optimism Goerli - 0x1660152496b4050Df198d3aCE4a94D283B4EA1f3
