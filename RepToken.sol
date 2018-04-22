pragma solidity ^0.4.23;

pragma experimental ABIEncoderV2;

import "./ERC721_lite.sol";

//Reputation token contract
contract RepToken {
    
    //"user" => GenericRepBadge
    mapping (address => GenericRepBadge) public badges;
    string status;
    uint i_stat;
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
        status = attr;
        uint i_stat = 12;

    } 
    

    function createRepBadge(string attr) internal returns (GenericRepBadge gr)
    {

            //multiple if statmeents
        return GenericRepBadge(msg.sender, 25, "Customer Service, Teamwork, Music", "Billy was a great front-desk staff for our organization!");
    }
    
    function getStatus() constant returns (string s)
    {
        
        return status;
    }
    
    function getIstat() returns (uint i){
        return i_stat;
    }


}