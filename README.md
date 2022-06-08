https://www.youtube.com/watch?v=2bjVWclBD_s
https://github.com/dappuniversity/nft_marketplace

// Starts a JSON-RPC server on top of Hardhat Network
npx hardhat node

// Deploy
npx hardhat run src/backend/scripts/deploy.js --network localhost

// Hardhat console
npx hardhat console --network localhost

// contract 배포 확인
const contract = await ethers.getContractAt("NFT", "0xe7f1725E7734CE288F8367e1Bb143E90bb3F0512")
console.log(contract);

// test
npx hardhat test

// address
NFT contract address 0x5FbDB2315678afecb367f032d93F642f64180aa3
Marketplace contract address 0xe7f1725E7734CE288F8367e1Bb143E90bb3F0512
