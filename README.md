# ERC20Token_Crowdsale

![image of ICO](https://www.asktraders.com/wp-content/uploads/2020/08/Was-ist-ein-ICO-1536x864.jpg)

You will create a fungible token that is ERC-20 compliant and that will be minted by using the `Crowdsale` and `MintedCrowdsale` contract from the OpenZeppelin Solidity library.

The crowdsale contract that you create will manage the entire crowdsale process, allowing users to send Ethereum to the contract and in return receive KSC, or KaseiCoin tokens. Your contract will mint the tokens automatically and distribute them to buyers in one transaction.

---

## Technologies:

This smart contract was written in Solidity code and utilizes [Remix IDE](https://remix.ethereum.org/), [Ganache](https://trufflesuite.com/ganache/index.html) and [MetaMask](https://metamask.io/) for deployment. 

---

## Installation Guide:

Before deploying this application make sure you have the following programs installed onto your local computer:

* [Ganache](https://trufflesuite.com/ganache/index.html)

* [MetaMask](https://metamask.io/)

---

## Usage:

To interact with the smart contracts:

* Clone this repository onto your local computer

* Open the provided `KaseiCoin.sol` and `KaseiCoinCrowdsale.sol` files into the [Remix IDE](https://remix.ethereum.org/).

* Compile the contracts using Solidity compiler version `0.5.5+commit.47a71e8f`

* Deploy the `KaseiCoinCrowdsaleDeployer` contract to a local blockchain with Remix, MetaMask, and Ganache.

* Input both of the addresses for `KaseiCoin` and `KaseiCoinCrowdsale`, provided by the deployer contract, into the "At Address" field. Make sure the specific contract is selected within the contract drop down. **(*See Visualizations)**

* Test the functionality of the crowdsale by using test accounts to buy new tokens and then checking the balances associated with those accounts.

* After purchasing tokens with one or more test accounts, view the total supply of minted tokens and the amount of wei that has been raised in the crowdsale contract.

* Send ether to the crowdsale from a different account (**not** the same account that is raising funds). Then, once you confirm that the crowdsale works as expected, try to add the token to your wallet and test a transaction.

* View your tokens in MetaMask. In MetaMask, click Add Token, then click Custom Token,  and enter the token contract’s address. Make sure to purchase higher amounts of tokens in order to see the denomination appear in your wallet as more than a few wei worth.

---

## Visualizations 

Contract Deployment:






First Purchase:






Second Purchase:






KaseiCoin in Metamask Wallet: