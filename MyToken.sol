// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MyToken is ERC20, Ownable {
    constructor() ERC20("Pritam Token", "PKS") {}

    function mintToken(uint256 amount) public onlyOwner {
        _mint(msg.sender, amount* 10**18);
    }
}
