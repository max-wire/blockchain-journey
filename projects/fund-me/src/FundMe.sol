// SPDX-License-Identifier: MIT

pragma solidity ^0.8.24;

import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";

import {PriceConverter} from "./PriceConverter.sol";

error FundMe_NotOwner();

contract FundMe {
    using PriceConverter for uint256;

    uint256 public constant MINIMUM_USD = 5e18;
    AggregatorV3Interface private spriceFeed;

    mapping(address => uint256) private saddressToAmountFunded;
    address[] private sfunders;

    address private immutable I_OWNER;

    constructor(address priceFeed) {
        I_OWNER = msg.sender;
        spriceFeed = AggregatorV3Interface(priceFeed);
    }

    function fund() public payable {
        require(msg.value.getConversionRate(spriceFeed) >= MINIMUM_USD, "Didn't send enough ETH");
        sfunders.push(msg.sender);
        saddressToAmountFunded[msg.sender] += msg.value;
    }

    function cheaperWithdraw() public onlyOwner {
        uint256 fundersLength = sfunders.length;
        for (uint256 funderIndex = 0; funderIndex < fundersLength; funderIndex++) {
            address funder = sfunders[funderIndex];
            saddressToAmountFunded[funder] = 0;
        }
        sfunders = new address[](0);

        (bool callSuccess,) = payable(msg.sender).call{value: address(this).balance}("");
        require(callSuccess, "Call Failed");
    }

    function withdraw() public onlyOwner {
        for (uint256 funderIndex = 0; funderIndex < sfunders.length; funderIndex++) {
            address funder = sfunders[funderIndex];
            saddressToAmountFunded[funder] = 0;
        }
        sfunders = new address[](0);

        (bool callSuccess,) = payable(msg.sender).call{value: address(this).balance}("");
        require(callSuccess, "Call Failed");
    }

    function getVersion() internal view returns (uint256) {
        return spriceFeed.version();
    }

    modifier onlyOwner() {
        _onlyOwner();
        _;
    }

    function _onlyOwner() internal view {
        if (msg.sender != I_OWNER) revert FundMe_NotOwner();
    }

    receive() external payable {
        fund();
    }

    fallback() external payable {
        fund();
    }

    /**
     * view / pure functins {Getter}
     */

    function getAddressToAmountFunded(address fundingAddress) external view returns (uint256) {
        return saddressToAmountFunded[fundingAddress];
    }

    function getFunder(uint256 index) external view returns (address) {
        return sfunders[index];
    }

    function getOwner() external view returns (address) {
        return I_OWNER;
    }
}
