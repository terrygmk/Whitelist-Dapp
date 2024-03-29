// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Whitelist {
    
    uint8 public maxWhitelistedAddresses ;
    uint8 public numAddressesWhitelisted ;

    mapping(address => bool) public whitelistedAddresses;

    constructor(uint8 _maxWhitelistedAddresses) {
        maxWhitelistedAddresses = _maxWhitelistedAddresses;
    }

    function addAddressToWhitelist() public {
        require(!whitelistedAddresses[msg.sender], "Sender has already already whitelisted");
        require(numAddressesWhitelisted < maxWhitelistedAddresses, "Max number of addresses already whitelisted");
        whitelistedAddresses[msg.sender] = true;
        numAddressesWhitelisted += 1;
    }
}