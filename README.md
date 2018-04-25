# RepuTable
Reputable coin

Setup:
Requires a lot of dependencies (external/global even). 

You need: a test blockchain (via ganache or testrpc or something)
Web3JS, and actually thaat's pretty much it.


How I got it working:
https://coursetro.com/posts/code/99/Interacting-with-a-Smart-Contract-through-Web3.js-(Tutorial)

Essentially: I deploy the contract to an injected blockchain (via web3) to a certain address on the blockchain. I did this via Remix Online Solidity IDE, but I am certain it is possible to do from the command line via something like `truffle` or another command line tool. Note that this step alone particularly has multiple subjobs!

Having said that, at the heart it still runs in a javascript execution environment (since it is a web app) and hence needs all the libraries and modules. Additionally, you must install global cli tools served via npm, like `testrpc`.

Hence, you need to run the `npm install` on the package.json 


Concise guide:
1. npm install package.json

2. Deploy smart contract (`RepToken.sol`) via solidity (may or may not need a local blockchain if you want to test locally)

3. Update certain variables dependent on the Ethereum addresses in the code. In the future, it would be best to extract these variables out to a config file or some other thing

4. Run your app! (just navigate to the html file; no server required*). Note that some changes need to made to unhardcode things etc.

   Q:

Q: how does web3 know to look on your local machine/blockchain, and NOT your testnet blockchain?

Another thing is this: if it was truly a "local" blockchain, then why do I need web access to test it?

```javascript 
web3 = new Web3(new Web3.providers.HttpProvider("http://localhost:8545"));
```

Probably since there is some poor decoupling from the tut: web3 is set to use metamask??

Another big thing is to close the testrpc window and see if ANYTHING AT ALL CHANGES. if it doesn't then something else is going on..

ToDo:
Get it running on the ethereum testnet, so that this app can be deployed out to the web.
Add array/index of structs to get multiple badges. However, this might be the "wrong" way to think about it! Move the code out of index.html, into a separate index.js or perhaps crypto/blockchain.js file


thursday @ DMZ: disruptive for panel of blockchain information
promocode: BLOCKHACK
Manufacturing company => bitcoin hardware wallet plugging!
hackernest => started in Toronto => community building
bitcoin bay meetup 291 King 

The critical question is the following: where is the call that actually deploys your contract to the network? sure we can use it, but we needs to be deployed first



WHY:

ABI calls instead of something like WCF or some other problem that was solved a long time ago?

The `web3.eth.Contract` object makes it easy to interact with smart contracts on the ethereum blockchain. When you create a new contract object you give it the json interface of the respective smart contract and web3 will auto convert all calls into low level ABI calls over RPC for you.



#### Frontend concerns

Probably the best to do is something like this: 

(don't just change the window.location, but instead we just animate => change the location some other way; for example move the screen down by a certain amount)

https://stackoverflow.com/questions/24602993/window-location-hash-scroll-down-isnt-smooth-only-scroll-left?utm_medium=organic&utm_source=google_rich_qa&utm_campaign=google_rich_qa

