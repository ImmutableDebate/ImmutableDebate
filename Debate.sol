pragma solidity ^0.5.0;

contract Debate {

  event Argument(string a);
  
  function sendEvent(string _argum) public { 
	emit Argument(_argum); 
	return argum;
  }

}