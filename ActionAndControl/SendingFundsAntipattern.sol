pragma solidity ^0.4.23;

contract Auction {
    address public highestBidder;
    uint highestBid;

    function bid() public payable {
        require(msg.value >= highestBid);
        if (highestBidder != 0) {
            highestBidder.transfer(highestBid);
        }
        highestBidder = msg.sender;
        highestBid = msg.value;
    }
}