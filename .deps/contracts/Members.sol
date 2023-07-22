// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Members{

    struct memberInfo{
        string username;
        address useraddress;
    }

    mapping(uint256 => memberInfo) members;
    uint256[] public memberIds;

    function registerMember(string memory username,
                            address useraddress, 
                            uint256 id) public {
        memberInfo storage newMember = members[id];
        newMember.username = username;
        newMember.useraddress = useraddress;
        memberIds.push(id);
    }

    function getMember(uint256 id) public view returns(string memory, address) {
        memberInfo storage m = members[id];
        return (m.username, m.useraddress);
    }

}