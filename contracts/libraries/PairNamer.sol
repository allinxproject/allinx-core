pragma solidity >=0.5.0;

import '../interfaces/IUniswapV2Pair.sol';

library PairNamerLibrary {
    string private constant TOKEN_NAME_PREFIX = 'INX:';
    string private constant TOKEN_SYMBOL_PREFIX = 'I:';
    string private constant TOKEN_SEPARATOR = '-';

    // produces a pair descriptor in the format of `${prefix}${name0}-${name1}`
    function pairName(
        address token0,
        address token1
    ) internal pure returns (string memory) {
        return
            string(
                abi.encodePacked(
                    TOKEN_NAME_PREFIX,
                    IUniswapV2Pair(token0).name(),
                    TOKEN_SEPARATOR,
                    IUniswapV2Pair(token1).name()
                )
            );
    }
    function pairSymbol(
        address token0,
        address token1
    ) internal pure returns (string memory) {
        return
            string(
                abi.encodePacked(
                    TOKEN_SYMBOL_PREFIX,
                    IUniswapV2Pair(token0).symbol(),
                    TOKEN_SEPARATOR,
                    IUniswapV2Pair(token1).symbol()
                )
            );
    }
}
