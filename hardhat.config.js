require("@nomicfoundation/hardhat-toolbox");
require('dotenv').config()

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  networks: {
    hardhat: {
    },
    goerli: {
      url: "https://goerli.infura.io/v3/2cce1f049fc04dac8240247dfbcbeff3",
      accounts: {
        mnemonic: process.env.mnemonic
      }
    },
    sepolia: {
      url: "https://sepolia.infura.io/v3/2cce1f049fc04dac8240247dfbcbeff3",
      accounts: {
        mnemonic: process.env.mnemonic
      }
    }
  },
  solidity: "0.8.18",
  etherscan: {
    apiKey: process.env.etherscan,
  },
};
