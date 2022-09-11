// SPDX-License-Identifier: MIT
 
pragma solidity 0.8.15;

import "./Ownable.sol";
import "./ERC20.sol";

contract BULPToken is ERC20, Ownable {

    constructor(address owner_, address tokenTo_, uint256 initialTotalSupply_)
        ERC20("BULPCoin", "TBULP")
    {
        _transferOwnership(owner_);
        _mint(tokenTo_, initialTotalSupply_);
    }

    function decimals() public pure override returns (uint8) {
        return 2;
    }
    
    function mint(address account_, uint256 amount_) external {
        require(
            account_ != address(0),
            "ERROR: is not accepted zero address to mint"
        );
        require(amount_ > 0, "ERROR: is not accepted zero amount to mint");
        _mint(account_, amount_);
    }

    function burn(address account_, uint256 amount_) external {
        require(
            account_ != address(0),
            "ERROR: is not accepted zero address to burn"
        );
        require(amount_ > 0, "ERROR: is not accepted zero amount to burn");
        _burn(account_, amount_);
    }
}