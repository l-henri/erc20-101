pragma solidity ^0.6.0;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "./IExerciceSolution.sol";

contract ExerciceSolution is ERC20 
{

	constructor (string memory name_, string memory symbol_) public ERC20(name_, symbol_) {}
    
  function getToken() external  returns (bool)
  { 
  	return true;
  }

  function buyToken() external payable  returns (bool)
  {
  	return true;
  }

  function isCustomerWhiteListed(address customerAddress) external  returns (bool)
  { 
  	return true;
  }

  function customerTierLevel(address customerAddress) external returns (uint256)
  {
  	return 10;
  }
}
