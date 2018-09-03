pragma solidity ^0.4.24;

import "./LibInterface.sol";

contract TheContract {
    LibInterface.S s;

    using LibInterface for LibInterface.S;

    function get() public view returns (uint) {
        return s.getUint();
    }

    function set(uint i) public {
        return s.setUint(i);
    }
}
