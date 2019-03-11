const Web3 = require('web3');
const web3 = new Web3("https://mainnet.infura.io/v3/{infuraID goes here}");
//const web3 = new Web3("https://ropsten.infura.io/v3/{infuraID goes here}");

const Debate = new web3.eth.Contract(abi, address);
Debate.methods.sendEvent("Hope so.", "Smith").call()
.then(console.log);


const YesorNo = new web3.eth.Contract(abi, address);
YesorNo.methods.sendEvent(true, "Brown").call()
.then(console.log);
