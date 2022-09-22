// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import './utils/IERC165.sol';

/**
 * @dev Required interface of an ERC1155S compliant contract
 */
interface IERC1155S is IERC165 {
    /**
     * @dev Emitted when a new soul with `soulId` and `account` is declared.
     */
    event SoulDeclare(uint256 soulId, address account);

    /**
     * @dev Emitted when the soul account is recovered from `oldAccount` to `newAccount` via Social Recovery.
     */
    event SoulRecover(address oldAccount, address newAccount);

    /**
     * @dev Emitted when `tokenId` token is granted to `account` under `licenseId` license and `expires` limit.
     */
    event TokenGrant(uint256 tokenId, address account, uint256 licenseId, uint64 expires);

    /**
     * @dev Declares a new soul and attach msg.sender to the soul.
     *
     * Requirements:
     *
     * - Caller can only be the contract owner.
     * - `account` cannot be the zero address.
     * - `soulId` was not declared before.
     */
    function declareSoul(uint256 soulId, address account) external;

    /**
     * @dev Recovers the soul account from `oldAccount` to `newAccount` via Social Recovery.
     *
     * Requirements:
     *
     * - Caller can only be the contract owner.
     * - `oldAccount` and `newAccount` must be different non-zero addresses.
     * - Caller must certify the soul by social relationships before recovery.
     */
    function recoverSoul(address oldAccount, address newAccount) external;

    /**
     * @dev Returns `soulId` of `account`.
     *
     * Requirements:
     *
     * - `account` cannot be the zero address.
     */
    function soulOf(address account) external view returns (uint256 soulId);

    /**
     * @dev Returns the `balance` of `tokenId` token owned by `account`.
     *
     * Requirements:
     *
     * - `account` cannot be the zero address.
     */
    function balanceOf(address account, uint256 tokenId) external view returns (uint256);

    /**
     * @dev Batch-operations version of {balanceOf}.
     *
     * Requirements:
     *
     * - `accounts` and `tokenIds` must have the same length.
     */
    function balanceOfBatch(address[] calldata accounts, uint256[] calldata tokenIds)
        external
        view
        returns (uint256[] memory);

    /**
     * @dev Returns `true` if `tokenId` token is fungible.
     */
    function tokenFungible(uint256 tokenId) external view returns (bool);

    /**
     * @dev Returns the URI of `tokenId` token.
     *
     * If the `\{id\}` substring is present in the URI, it must be replaced by
     * clients with the actual token type ID.
     */
    function tokenUri(uint256 tokenId) external view returns (string memory);

    /**
     * @dev Returns the URI of the soul metadata specified by `soulMetaId` and `account`.
     *
     * If the `\{id\}` substring is present in the URI, it must be replaced by
     * clients with the actual `soulMetaId` and `account`.
     *
     * Requirements:
     *
     * - `account` cannot be the zero address.
     */
    function soulUri(uint256 soulMetaId, address account) external view returns (string memory);

    /**
     * @dev Returns the URI of `licenseId` license.
     *
     * If the `\{id\}` substring is present in the URI, it must be replaced by
     * clients with the actual token type ID.
     */
    function licenseUri(uint256 licenseId) external view returns (string memory);

    /**
     * @dev Grants `tokenId` token to `account` under `licenseId` license and `expires` limit.
     * `expires` is a UNIX timestamp, `account` has authorization before `expires`. Zero `expires` indicates permanent authorization.
     *
     * Requirements:
     *
     * - `account` cannot be the zero address.
     * - `tokenId` must be a non-fungible token.
     * - Same `account`-`tokenId` pair can only be granted once.
     */
    function grant(
        uint256 tokenId,
        address account,
        uint256 licenseId,
        uint64 expires
    ) external;

    /**
     * @dev Returns authorization of `tokenId` token.
     *
     * Requirements:
     *
     * - `tokenId` must be a non-fungible token.
     */
    function authOf(uint256 tokenId)
        external
        view
        returns (
            address[],
            uint256[],
            uint64[]
        );
}
