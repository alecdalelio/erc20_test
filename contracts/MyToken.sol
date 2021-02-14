pragma solidity ^0.7;

import '@openzeppelin/contracts/token/ERC20/ERC20.sol';

contract MyToken1 is ERC20 {
    constructor() ERC20('My Token', 'MYT') {}   
}

contract MyToken2 is ERC20 {
    constructor() ERC20('My Token', 'MYT') {
        _mint(msg.sender, 100000);
    }   
}

contract MyToken3 is ERC20 {

    address public admin;

    constructor() ERC20('My Token', 'MYT') {
        admin = msg.sender;
    }   

    function mint(address to, uint amount) external {
        require(msg.sender == admin, 'only admin');
        _mint(to, amount);
    }
}

contract MyToken4 is ERC20 {
    constructor() ERC20('My Token', 'MYT') {}   

    functin faucet(address to, uint amount) external {
        _mint(to, amount);
    }
}