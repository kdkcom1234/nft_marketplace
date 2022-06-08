# 유튜브

https://www.youtube.com/watch?v=2bjVWclBD_s

# 소스코드

https://github.com/dappuniversity/nft_marketplace

## Starts a JSON-RPC server on top of Hardhat Network

npx hardhat node

## Deploy

npx hardhat run src/backend/scripts/deploy.js --network localhost

## Hardhat console

npx hardhat console --network localhost

## contract 배포 확인

const contract = await ethers.getContractAt("NFT", "0xe7f1725E7734CE288F8367e1Bb143E90bb3F0512")
console.log(contract);

## test

npx hardhat test

## address

NFT contract address 0x5FbDB2315678afecb367f032d93F642f64180aa3
Marketplace contract address 0xe7f1725E7734CE288F8367e1Bb143E90bb3F0512

## 특이사항

1. 현재 Infura IPFS는 무료이며 클라이언트에서 구현하기가 쉽다.(베타버전으로 나중에는 계정으로 연결될거라고 함)
   https://community.infura.io/t/ipfs-hosting-files-for-free/3498/4

2. 데이터 목록을 조회할 때 emit한 이벤트 목록을 filter하여 조회할 수 있다.
   const filter = marketplace.filters.Bought(null, null, null, null, null, account);
   const results = await marketplace.queryFilter(filter);
