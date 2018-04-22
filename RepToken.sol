pragma solidity ^0.4.23;

pragma experimental ABIEncoderV2;

import "./ERC721Token.sol";

 
//Reputation token contract
//It is assumed that inside the String is the address of person who gave the token
contract RepToken is ERC721 {
    
    //"user" => 32 bit Rep string
    mapping (address => GenericRepBadge) public badges;
    
    struct GenericRepBadge{
        
        address issuer; 
        //hours volunteered at the org
        uint hoursVolunteered;
        string skills; 
        
        //a nice message to say about the person (~150 chars)
        string tweet; 
    
    }
    //we can have functions like notarize, which add to the mapping, the Sha/transformation of the input document
    
    //we also need to verify that only authorized ngos can change the balance book 
    
    function getBadges(address addr) returns (GenericRepBadge) {
        return badges[addr];
        
    }
    
    //Send a badge to the honoree.
    function sendRepBadge(address honoree, string attr){
       
        badges[honoree] = createRepBadge(attr);
        
        
    } 
    

    function createRepBadge(string attr) internal returns (GenericRepBadge)
    {
        //need to parse the string attribute
        
        return GenericRepBadge(msg.sender, 25, "Customer Service, Teamwork, Music", "Billy was a great front-desk staff for our organization!");
        
        // badges[msg.sender] = attr;
        
        
    }
    

}