// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

contract NFT is ERC721URIStorage {
    // tokenId의 역할
    // NFT: 토큰에 Id를 부여한 것
    uint public tokenCount;
    constructor() ERC721("DApp NFT", "DAPP"){}
    function mint(string memory _tokenURI) external returns(uint) {
        tokenCount ++;

        // _safeMint(to, tokenId);
        _safeMint(msg.sender, tokenCount);

        // _setTokenURI(tokenId, _tokenURI);
        _setTokenURI(tokenCount, _tokenURI);
        
        return(tokenCount);
    }
}