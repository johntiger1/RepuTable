pragma solidity ^0.4.23;

pragma experimental ABIEncoderV2;

import "./ERC721Token.sol";

//Reputation token contract
contract RepToken is ERC721 {
    
    //"user" => GenericRepBadge
    mapping (address => GenericRepBadge) public badges;
    
    struct GenericRepBadge{
        
        address issuer; 
        //hours volunteered at the org
        uint hoursVolunteered;
        string skills; 
        
        //a nice message to say about the person (~150 chars)
        string tweet; 
    
    }

    function getBadges(address addr) returns (GenericRepBadge) {
        return badges[addr];
    }
    
    //Send a badge to the honoree.
    function sendRepBadge(address honoree, string attr){
        badges[honoree] = createRepBadge(attr);

    } 
    

    function createRepBadge(string attr) internal returns (GenericRepBadge)
    {
        return GenericRepBadge(msg.sender, 25, "Customer Service, Teamwork, Music", "Billy was a great front-desk staff for our organization!");
    }
}