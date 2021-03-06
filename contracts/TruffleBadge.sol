pragma solidity ^0.6.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract TruffleBadge is ERC721 {
    uint256 public nextBadgeId;

    constructor() ERC721("TruffleBadge", "TRFL") public {
        nextBadgeId = 0;
    }

    function claimBadge(string memory attendenceBadgeURI)
        public
        returns (uint256)
    {
        uint256 newBadgeId = nextBadgeId;
        _mint(msg.sender, newBadgeId);
        nextBadgeId = nextBadgeId + 1;

        _setTokenURI(newBadgeId, "https://ipfs.io/ipfs/QmcU3fC6q8wpefdC5eEDnaP2epEr94ejjZE2sRWgHcfDJ5");

        return newBadgeId;
    }
}