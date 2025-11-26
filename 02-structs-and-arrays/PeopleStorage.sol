// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/**
 * @title PeopleStorage
 * @author Maxwell
 * @notice Stores people and their favorite numbers
 * @dev Learning focus: structs and arrays
 */
contract PeopleStorage {

    struct Person {
        string name;
        uint256 favoriteNumber;
    }

    // Dynamic array of Person structs
    Person[] public people;

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        people.push(Person(_name, _favoriteNumber));
    }

    function getPeopleCount() public view returns (uint256) {
        return people.length;
    }
}
