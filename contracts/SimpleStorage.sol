pragma solidity 0.4.13;

contract SimpleStorage {
  uint storedData;
  event LogChanged(uint value);

  function set(uint x) public {
    storedData = x;
    LogChanged(x);
  }

  function get() public constant returns (uint) {
    return storedData;
  }
}
