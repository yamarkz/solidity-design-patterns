pragma solidity ^0.4.24;

contract Oracle {

    address knownSource = 0x123...;

    struct Request {
        bytes data;
        function(bytes memory) external callback;
    }

    Request[] requests;
  
    event NewRequest(uint);

    modifier onlyBy(address _account) {
        require(msg.sender == _account);  _;
    }
  
    function query(bytes _data, function(bytes memory) external _callback) public {
        requests.push(Request(_data, _callback));
        NewRequest(requests.length - 1);
    }

    function reply(uint _requestID, bytes _response) public onlyBy(knownSource) {
        requests[_requestID].callback(response);
    }
}
