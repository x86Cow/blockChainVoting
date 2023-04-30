//SPDX-License-Identifier: GPL3
pragma solidity >=0.8.2 <0.9.0;

contract Voting {
    struct PollInfo {
        string title;
        string desc;
        bool status;
    }

    PollInfo pollInfo;
    function setPollInfo(string memory _title, string memory _desc, bool _status) public {
        pollInfo = PollInfo(_title, _desc, _status);
    }
    function getPollTitle() public view returns (string memory) {
        return(pollInfo.title);
    } 
    function getPollDesc() public view returns (string memory) {
        return(pollInfo.desc);
    }
    function getPollStatus() public view returns (bool) {
        return(pollInfo.status);
    }
}