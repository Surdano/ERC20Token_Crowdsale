pragma solidity ^0.5.0;

// Import over "KaseiCoin.sol" and have the KaseiCoinCrowdsale contract inherit the following OpenZeppelin:
// * Crowdsale
// * MintedCrowdsale
// * CappedCrowdsale
// * TimedCrowdsale
// * RefundablePostDeliveryCrowdsale
import "./KaseiCoin.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/Crowdsale.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/emission/MintedCrowdsale.sol";

 // UPDATE THE CONTRACT SIGNATURE TO ADD INHERITANCE
contract KaseiCoinCrowdsale is Crowdsale, MintedCrowdsale {

    // Parameters for all of the features of the crowdsale.
    constructor(
        uint256 rate, // rate in TKNbits
        address payable wallet, // sale beneficiary
        KaseiCoin token // the Kaseicoin itself that the KaseiCoinCrowdsale will work with
    ) 
        Crowdsale(rate, wallet, token)
        public
    {
        // constructor can stay empty
    }
}

contract KaseiCoinCrowdsaleDeployer {
    // Create an `address public` variable called `kasei_token_address`.
    address public kaseiTokenAddress;
    // Create an `address public` variable called `kasei_crowdsale_address`.
    address public kaseiCrowdsaleAddress;

    // Add the constructor.
    constructor(
       string memory name,
       string memory symbol,
       address payable wallet // this address will receive all Kasei
    ) 
        public 
    {
        // Create a new instance of the KaseiCoin contract.
        KaseiCoin token = new KaseiCoin(name, symbol, 0);

        // Assign the token contract’s address to the `kasei_token_address` variable.
        kaseiTokenAddress = address(token);

        // Create a new instance of the `KaseiCoinCrowdsale` contract
        KaseiCoinCrowdsale kaseiCrowdsale = new KaseiCoinCrowdsale(1, wallet, token);
            
        // Aassign the `KaseiCoinCrowdsale` contract’s address to the `kasei_crowdsale_address` variable.
        kaseiCrowdsaleAddress = address(kaseiCrowdsale);

        // Set the `KaseiCoinCrowdsale` contract as a minter
        token.addMinter(kaseiCrowdsaleAddress);
        
        // Have the `KaseiCoinCrowdsaleDeployer` renounce its minter role.
        token.renounceMinter();
    }
}
