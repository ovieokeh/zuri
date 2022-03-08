// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.0;

contract Greeter {
    string public message;
    address payable owner;

    constructor() {
        message = "Hello world!";
        owner = payable(msg.sender);
    }

    function updateGreeting(string memory _newMessage) public {
        assert(bytes(_newMessage).length > 0);
        message = _newMessage;
    }

    function transferOwnership(address payable _newOwner) public {
        assert(msg.sender == owner);
        assert(_newOwner != address(0));
        owner = _newOwner;
    }
}
