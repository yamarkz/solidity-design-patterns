pragma solidity ^0.4.24;

contract DataStore {
    // storage data goes here
    uint public x;
}

contract Consumer {
    address _data;
    DataStore data;
  
    constructor(address _d) {
        data = DataStore(_d); 
        _data = _d; 
    }
  
    function getData() returns (address) {
        return _data;
    }
}

contract Controller is Consumer {
    
    constructor(address d) Consumer(d) {
    }
  
    function accessData() public returns (uint) {
        return data.x;
    }
}