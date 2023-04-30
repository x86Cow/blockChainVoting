// SPDX-License-Identifier: GPL3
pragma solidity ^0.8.13;

import "../lib/forge-std/src/Test.sol";
import "../src/Voting.sol";

contract VotingTest is Test {
    Voting public voting;

    function setUp() public {
        voting = new Voting();
        voting.setPollInfo(0xD7EF90Eb0fF8D758BdFCC10ab7346Ff71FFecc6B , "Title", "This is a test", true);
    }

    function testPollInfo() public {
        assertEq(voting.getPollTitle(), "Title");
        assertEq(voting.getPollQuestion(), "This is a test");
        assertEq(voting.getPollStatus(), true);
    }
    // function testPollEdit() public {}
}