// SPDX-License-Identifier: MIT

pragma solidity 0.8.24; // stating the solidity version

contract SimpleStorage {
    uint256 myFavoriteNumber; // 0

    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    Person[] public listOfPeople;

    mapping(string => uint256) public nameToFavoriteNumber;


    function store(uint256 _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns(uint256) {
        return myFavoriteNumber;
    }

    function addPerson(string memory name, uint256 favoriteNumber) public {
        nameToFavoriteNumber[name] = favoriteNumber;
    }
}