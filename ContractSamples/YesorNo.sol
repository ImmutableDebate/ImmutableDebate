pragma solidity ^0.5.0;

contract YesorNo{
	
	//quick yes or no
  struct arguer{
	string name;
  }
  
  mapping(address => arguer) arguers;
  event Argument(bool b, arguer arg);
  
  function sendEvent(bool _argum, string _n) public returns (bool) { 
    arguer newArguer = arguer({
	name: _n;
	});
	arguers[msg.sender] = newArguer;
	emit Argument(_argum, arguers[msg.sender]); 
	return _argum;
  }

}