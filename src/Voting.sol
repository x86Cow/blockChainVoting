//SPDX-License-Identifier: GPL3
pragma solidity >=0.8.2 <0.9.0;

contract Voting {
    address public owner;

    constructor() {
        owner = msg.sender;
    }
    struct PollInfo {
        string title;
        string question;
        bool status;
    }

    PollInfo pollInfo;
    modifier onlyOwner() {
        require(msg.sender == owner, "Not owner");
        _;
    }
    function setPollInfo(string memory _title, string memory _question, bool _status) public onlyOwner {
        pollInfo = PollInfo(_title, _question, _status);
    }
    function getPollTitle() public view returns (string memory) {
        return(pollInfo.title);
    } 
    function getPollQuestion() public view returns (string memory) {
        return(pollInfo.question);
    }
    function getPollStatus() public view returns (bool) {
        return(pollInfo.status);
    }
}