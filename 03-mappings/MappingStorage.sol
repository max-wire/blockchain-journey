// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/**
 * @title MappingStorage
 * @author Maxwell
 * @notice Stores favorite numbers using mappings
 * @dev Learning focus: mappings and hybrid data structures
 */
contract MappingStorage {

    // Mapping from name to favorite number
    mapping(string => uint256) private nameToFavoriteNumber;

    // Array to track all names (mappings cannot be iterated)
    string[] public names;

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        // Track name separately
        names.push(_name);

        // Map name to favorite number
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }

    function getFavoriteNumber(string memory _name)
        public
        view
        returns (uint256)
    {
        return nameToFavoriteNumber[_name];
    }

    function getNamesCount() public view returns (uint256) {
        return names.length;
    }
}
