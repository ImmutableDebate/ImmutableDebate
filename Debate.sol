pragma solidity ^0.5.0;

// Basic concept of the contract
contract Debate {

  event Argument(string a, address ad);
  
  function sendEvent(string _argum) public { 
	emit Argument(_argum, msg.sender); 
	return argum;
  }

}
