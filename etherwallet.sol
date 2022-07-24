// SPDX-License-Identifier: MIT


pragma solidity ^0.8.0;

contract EtherWallet{
    address  public owner;

    constructor(){
        owner = payable(msg.sender);
    } 

    function withdraw(uint _amount) external  {
        require(msg.sender == owner);
        payable(msg.sender).transfer(_amount);
    }

    function getBalance() external view returns(uint){
        return address(this).balance;
    }
    
    receive() external payable{}
}