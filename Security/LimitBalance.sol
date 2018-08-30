pragma solidity ^0.4.24;

contract LimitBalance {
    uint256 public limit;

    constructor(uint256 _value) public {
        limit = _value;
    }

    modifier limitedPayable() {
        require(this.balance <= limit);
        _;
    }
  
    function deposit() public payable limitedPayable {
        // some code
    }
}