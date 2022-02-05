require("@nomiclabs/hardhat-waffle");
/**
 * @type import('hardhat/config').HardhatUserConfig
 */

 module.exports = {
  solidity: "0.8.3",
  networks: {
   rinkeby: {
     url: "https://rinkeby.infura.io/v3/48c78f0306c547398b6d64ba20447d42", //Infura url with projectId
     accounts: ["385b94a0c0877488a21075ed742c2339f05775862b7764715f8aae650fcf821c"] // add the account that will deploy the contract (private key)
    },
  }
};