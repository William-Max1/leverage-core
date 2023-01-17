pragma solidity =0.5.16;


contract CStorage {
	address public borrowable0;
	address public borrowable1;
	address public tarotPriceOracle;
	uint public safetyMarginSqrt = 1.58113883e18; // safetyMargin: 250%
	uint public liquidationIncentive = 1.04e18; //4%

	function safe112(uint256 n) internal pure returns (uint112) {
        require(n < 2**112, "Tarot: SAFE112");
        return uint112(n);
    }
}