pragma solidity ^0.5.0;

contract Debate{

  struct arguer{
	string name;
  }
  
  mapping(address => arguer) arguers;
  event Argument(string a, bool c, arguer arg);
  
  function sendEvent(string _argum, string _n, bool _change) public returns (string){ 
    arguer newArguer = arguer({
	name: _n;
	});
	arguers[msg.sender] = newArguer;
	//emit argument with statement,whether a change of opinion occurred, and address
	emit Argument(_argum, _change,arguers[msg.sender]); 
	return _argum;
  }

}
