pragma solidity ^0.4.24;

contract RateLimit {
    uint enabledAt = now;
    
    modifier enabledEvery(uint _t) {
        if (now >= enabledAt) {
            enabledAt = now + _t;
            _;
        }
    }
  
    function f() public enabledEvery(1 minutes) {
        // some code
    }
}