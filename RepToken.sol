pragma solidity ^0.4.23;

pragma experimental ABIEncoderV2;

import "./ERC721_lite.sol";

//Reputation token contract
contract RepToken {
    
    //TODO: change the mapping to be from address => GenericRepBadge[]
    //and also provide an index into the array/get the length

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
    
    function getBadges(address addr) returns (address issuer, uint hoursVolunteered, string skills, string tweet) {
        
        address a = badges[addr].issuer;
        uint hoursVolunteered_out = badges[addr].hoursVolunteered;
        string skills_out = badges[addr].skills;
        string tweet_out = badges[addr].tweet;
        return (a, hoursVolunteered_out, skills_out, tweet_out);
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