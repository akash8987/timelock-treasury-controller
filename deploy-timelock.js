const hre = require("hardhat");

async function main() {
  const [deployer] = await hre.ethers.getSigners();
  
  const minDelay = 172800; // 2 days in seconds
  const proposers = [deployer.address];
  const executors = [deployer.address];
  const admin = deployer.address;

  console.log("Deploying ProtocolTimelock...");
  
  const Timelock = await hre.ethers.getContractFactory("ProtocolTimelock");
  const timelock = await Timelock.deploy(minDelay, proposers, executors, admin);

  await timelock.waitForDeployment();
  console.log(`Timelock deployed to: ${await timelock.getAddress()}`);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
