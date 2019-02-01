pragma solidity ^0.5.0;

contract YesorNo is Ownable{
	
	//quick yes or no
  struct arguer{
	string name;
	bool voted;
  }
  
  mapping(address => arguer) arguers;
  event Argument(bool b, arguer arg);
  
  function sendEvent(bool _argum, string _n) public returns (bool) {
    arguer newArguer = arguer({
	name: _n;
	});
	arguers[msg.sender] = newArguer;
	require(newArguer.voted == false);
	emit Argument(_argum, arguers[msg.sender]); 
	return _argum;
  }

}
