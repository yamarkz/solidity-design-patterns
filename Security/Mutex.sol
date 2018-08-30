pragma solidity ^0.4.24;

contract Mutex {
    bool locked;
	
    modifier noReentrancy() {
        require(!locked);
        locked = true;
        _;
        locked = false;
    }

    function f() noReentrancy public returns (uint) {
        require(msg.sender.call());
        return 1;
    }
}