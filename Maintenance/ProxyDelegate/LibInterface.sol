pragma solidity ^0.4.24;

library LibInterface {
    struct S { uint i; }

    function getUint(S storage s) public view returns (uint);
    function setUint(S storage s, uint i) public;
}