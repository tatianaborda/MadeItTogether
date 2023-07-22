// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Challenges{

    struct Challenge{
        string title;
        string description;
        uint duration;
        uint deadline;
        uint deposit;
        uint reward;
    }

    mapping(uint256 => Challenge) challenges;
    uint256[] public challengeIds;

    function addChallenge(string memory title,
                        string memory description,
                        uint duration,
                        uint deadline,
                        uint256 deposit,
                        uint256 reward, 
                        uint256 id) public {
    Challenge storage newChallenge = challenges[id];
    newChallenge.title = title;
    newChallenge.description = description;
    newChallenge.duration = duration;
    newChallenge.deadline = deadline;
    newChallenge.deposit = deposit;
    newChallenge.reward = reward;
    challengeIds.push(id);
    }

    function getChallenge(uint256 id) public view returns(string memory, string memory, uint, uint, uint256, uint256) {
        Challenge storage m = challenges[id];
        return (m.title, m.description, m.duration, m.deadline, m.deposit, m.reward);
    }
}