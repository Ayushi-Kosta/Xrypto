// https://eth-goerli.g.alchemy.com/v2/UiZKTcUhsvplNN41ZtMeuDzTlCQWVpQX
// UiZKTcUhsvplNN41ZtMeuDzTlCQWVpQX
require('@nomiclabs/hardhat-waffle');

module.exports = {
  solidity: '0.8.0',
  networks: {
    goerli: {
      url: 'https://eth-goerli.g.alchemy.com/v2/UiZKTcUhsvplNN41ZtMeuDzTlCQWVpQX',
      accounts: process.env.pk,
    },
  },
};