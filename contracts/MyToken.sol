// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

contract MyToken {

    string public name = "MyToken";
    string public symbol = "MTK";
    uint8 public decimals = 18;
    uint256 public totalSupply;

    mapping(address => uint256) private balances;
    mapping(address => mapping(address => uint256)) private allowances;

    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(address indexed owner, address indexed spender, uint256 value);

    constructor(uint256 initialSupply) {
        totalSupply = initialSupply * 10 ** decimals;
        balances[msg.sender] = totalSupply;
        emit Transfer(address(0), msg.sender, totalSupply);
    }

    function balanceOf(address account) public view returns (uint256) {
        return balances[account];
    }



    
    // // First I declare my event for the NFT
    // event Transfer(address indexed from, address indexed to, uint256 indexed tokenId);
    // event Approval(address indexed owner, address indexed approved, uint256 indexed tokenId);
    // event ApprovalForAll(address indexed owner, address indexed operator, bool approved);

    // // Next I declare my storages
    // string private _name;
    // string private _symbol;
    // mapping(uint256 => address) private _owners;
    // mapping(address => uint256) private _balance;
    // mapping(uint256 => address) private _tokenApprovals;
    // mapping(address => mapping(address => bool)) private _operatorApprovals;
}