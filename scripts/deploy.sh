echo "deploy begin....."

mkdir -p ./deployments

TF_CMD=node_modules/.bin/truffle-flattener

echo "" >  ./deployments/INXV2Factory.full.sol
cat  ./scripts/head.sol >  ./deployments/INXV2Factory.full.sol
$TF_CMD ./contracts/INXV2Factory.sol >>  ./deployments/INXV2Factory.full.sol


echo "" >  ./deployments/INXV2Pair.full.sol
cat  ./scripts/head.sol >  ./deployments/INXV2Pair.full.sol
$TF_CMD ./contracts/INXV2Pair.sol >>  ./deployments/INXV2Pair.full.sol

echo "deploy end....."