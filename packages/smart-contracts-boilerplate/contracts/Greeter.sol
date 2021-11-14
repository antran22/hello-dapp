//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import 'hardhat/console.sol';
import '@openzeppelin/contracts/utils/math/SafeMath.sol';

contract Greeter {
  string private _greeting;

  constructor(string memory _defaultGreeting) {
    console.log('Deploying a Greeter with greeting:', _greeting);
    _greeting = _defaultGreeting;
  }

  function greet() public view returns (string memory) {
    return _greeting;
  }

  function setGreeting(string memory _newGreeting) public {
    console.log('Changing greeting from "%s" to "%s"', _greeting, _newGreeting);
    _greeting = _newGreeting;
  }
}
