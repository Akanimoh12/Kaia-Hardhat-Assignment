// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

contract MyToken {
    
    // First I declare my event for the NFT
    event Transfer(address indexed from, address indexed to, uint256 indexed tokenId);
    event Approval(address indexed owner, address indexed approved, uint256 indexed tokenId);
    event ApprovalForAll(address indexed owner, address indexed operator, bool approved);


}