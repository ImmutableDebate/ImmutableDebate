pragma solidity ^0.5.0;

contract Debate is Ownable{

  struct arguer{
	string name;
	string department;
  }
  
  mapping(address => arguer) arguers;
  event Argument(string a, bool c, uint8 conf, arguer arg);
  event PossibleChangePending(string cp, address a); 
  
  function sendEvent(string _argum, string _n, bool _change, uint8 _confidence) public returns (string, string, bool, uint8) isOwner{ 
    arguer newArguer = arguer({
	name: _n;
	});
	arguers[msg.sender] = newArguer;
	//emit argument with statement,whether a change of opinion occurred, and address
	emit Argument(_argum, _change, _confidence, arguers[msg.sender]);
	return _argum,_n,_change,_confidence; 
  }
	
  function PostChange() public isOwner
 {
    emit PossibleChangePending("User might change decision.", msg.sender); 

 }
}