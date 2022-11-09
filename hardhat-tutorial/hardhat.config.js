require("@nomicfoundation/hardhat-toolbox");
require("dotenv").config({ path: "./.env" });
/** @type import('hardhat/config').HardhatUserConfig */

const { QUICKNODE_HTTP_URL, PRIVATE_KEY } = process.env;

module.exports = {
  solidity: "0.8.17",
  networks: {
    goerli: {
      url: QUICKNODE_HTTP_URL,
      accounts: [PRIVATE_KEY],
    },
  },
};
