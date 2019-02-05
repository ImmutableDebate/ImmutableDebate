pragma solidity ^0.5.0;

import './Ownable.sol';

contract Debate is Ownable{

  struct arguer{
	string name;
	string department;
  }
  
  mapping(address => arguer) arguers;
  event Argument(string a, bool c, uint8 conf);
  event PossibleChangePending(string cp, address a); 
  
  function sendEvent(string memory _argum, string memory _n, bool _change, uint8 _confidence) public onlyOwner returns (string memory, string memory, bool, uint8) { 
    arguer memory newArguer = arguer({
	name: _n,
	department: ''
	});
	arguers[msg.sender] = newArguer;
	//emit argument with statement,whether a change of opinion occurred, and address
	emit Argument(_argum, _change, _confidence);
	return (_argum,_n,_change,_confidence); 
  }
	
  function PostChange() public onlyOwner
 {
    emit PossibleChangePending("User might change decision.", msg.sender); 

 }
}
