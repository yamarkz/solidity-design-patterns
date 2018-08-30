pragma solidity ^0.4.24;

import "./Oracle.sol";

contract OracleConsumer {
    Oracle oracle = Oracle(0x123...);

    modifier onlyBy(address _account) {
        require(msg.sender == _account);  _;
    }
  
    function updateExchangeRate() {
        oracle.query("USD", this.oracleResponse);
    }
    
    function oracleResponse(bytes _response) onlyBy(oracle) { 
        // use the data
    }
}