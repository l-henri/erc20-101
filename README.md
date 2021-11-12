# ERC20 101

## Introduction
Welcome! This is an automated workshop that will explain how to deploy and ERC20 token, and customize it to perform specific functions.
It is aimed at developpers that have never written code in Solidity, but who understand its syntax.

## How to work on this TD
The TD has two components:
- An ERC20 token, ticker TD02, that is used to keep track of points 
- An evaluator contract, that is able to mint and distribute TD02 points

Your objective is to gather as many TD02 points as possible. Please note :
- The 'transfer' function of TD02 has been disabled to encourage you to finish the TD with only one address
- The function 

In order to receive points, you will have to do the 

## Points list
### Setting up
- Create a git repository and share it with the teacher (1 pts)
- Install truffle and create an empty truffle project (2 pts)
These points will be attributed manually if you do not manage to have your contract interact with the evaluator, or automatically in the first question.

### ERC20 basics
- Call getTickerAndSupply() in the evaluator contract to receive a random ticker for your ERC20 token, as well as an initial token supply (1 pt)
- Create an ERC20 token contract with the proper ticker and supply (2 pt)
- Deploy it to the Rinkeby testnet (2 pts)
- Call testErc20TickerAndSupply() in the evaluator to receive your points (all remaining 7 points are attributed at that step)

### Distributing and selling tokens
- Create a getToken() function that distributes token to the caller (2 pts)
- Create a buyToken() function that lets the caller send an arbitrary amount of ETH, and distributes a proportionate amount of token (2 pts)

### Creating an ICO allow list
- Create a customer allow listing function. Only allow listed users should be able to call getToken()
- Call testDenyListing() in the evaluator to show he can't buy tokens using buyTokens() (1 pt)
- Allow the evaluator to buy tokens
- Call testAllowListing()in the evaluator to show he can now buy tokens buyTokens() (2 pt)

### Creating multi tier allow list
- Create a customer multi tier listing function. Only allow listed users should be able to call buyToken(); and customers should receive a different amount of token based on their level
- Call testDenyTier() in the evaluator to show he can't buy tokens using buyTokens() (1 pt)
- Add the evaluator in the first tier. He should now be able to buy N tokens for Y amount of ETH
- Call testTier1()in the evaluator to show he can now buy tokens(2 pt)
- Add the evaluator in the second tier. He should now be able to buy 2N tokens for Y amount of ETH 
- Call testTier2()in the evaluator to show he can now buy more tokens(2 pt)

### Extra points
Extra points if you find bugs / corrections this TD benefit from, and submit a PR to make it better.  


## Installing
> npm install @openzeppelin/contracts
> npm install @truffle/hdwallet-provider
