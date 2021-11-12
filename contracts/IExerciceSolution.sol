pragma solidity ^0.6.0;
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

interface IExerciceSolution is IERC20
{

  function symbol() external view returns (string memory);
    
  function getToken() external returns (bool);

  function buyToken() external payable returns (bool);

  function isCustomerWhiteListed(address customerAddress) external returns (bool);

  function customerTierLevel(address customerAddress) external returns (uint256);
}
