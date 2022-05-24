// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

contract NFT is ERC721URIStorage {
  uint public tokenCount;
  // name, symbol
  constructor() ERC721("DApp NFT", "DAPP"){}

  function mint(string memory _tokenURI) external returns(uint) {
      tokenCount ++;

      // _safeMint(to, tokenId)
      _safeMint(msg.sender, tokenCount);

      // _setTokenURI(tokenId, _tokenUri)
      _setTokenURI(tokenCount, _tokenURI);
      
      return(tokenCount);
  }  
}