//SPDX-License-Identifier: GPL3
pragma solidity >=0.8.2 <0.9.0;

contract Voting {
    struct PollInfo {
        address pollCreator;
        string title;
        string question;
        bool status;
    }

    PollInfo pollInfo;
    function setPollInfo(address _pollCreator, string memory _title, string memory _question, bool _status) public {
        pollInfo = PollInfo(_pollCreator, _title, _question, _status);
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