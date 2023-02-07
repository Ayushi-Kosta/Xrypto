const mainfunction = async () => {
  // getting the contract to deploy
  const transactionsFactory = await hre.ethers.getContractFactory("Transactions");
  // deploying the contract
  const transactionsContract = await transactionsFactory.deploy();

  await transactionsContract.deployed();

  console.log("Transactions deployed to address: ", transactionsContract.address);
};

const runMainFunction = async () => {
  try {
    await mainfunction();
    process.exit(0);
  } catch (error) {
    console.error(error);
    process.exit(1);
  }
};

runMainFunction();