pragma solidity ^0.8.3;

import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

// Inheriting the OZ contract
contract FactoryNFT is ERC721URIStorage { 

    using Counters for Counters.Counter; 
    Counters.Counter private _tokenIds;

    constructor() ERC721("Factory NFT", "FTN") {
    }
    
    // Create mint function createToken
    function createToken(string memory tokenURI) public returns (uint) {

        // increment tokens in storage and save as a variable
        _tokenIds.increment();
        uint256 newItemId = _tokenIds.current();

        // mint NFT and set its token URI
        _mint(msg.sender, newItemId);
        _setTokenURI(newItemId, tokenURI);

        return newItemId;
    }

}