pragma solidity ^0.5.0;

contract Debate{

  struct arguer{
	string name;
  }
  
  mapping(address => arguer) arguers;
  event Argument(string a, arguer arg);
  
  function sendEvent(string _argum, string _n) public returns (string){ 
    arguer newArguer = arguer({
	name: _n;
	});
	arguers[msg.sender] = newArguer;
	emit Argument(_argum, arguers[msg.sender]); 
	return _argum;
  }

}