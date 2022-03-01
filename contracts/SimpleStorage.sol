//SPDX-License-Identifier: MIT

pragma solidity >=0.6.0 <0.9.0;

contract SimpleStorage {
    uint256 favoriteNumber;
    // bool favoriteBool = false;
    // string favoriteString = "string";
    // int256 favoriteInt = -10;
    // bytes32 favoriteBytes = "cat";
    // address favoriteAddress = 0x8005467d5e7A27BA47D05F4f54A72779AEaca9F6;

    struct People {
        uint256 favoriteNumber;
        string name;
    }

    People[] public person;
    mapping(uint256 => string) public favoriteNumberToName;

    function store(uint256 _favoriteNumber) public returns (uint256){
        favoriteNumber = _favoriteNumber;
        return _favoriteNumber;
    }

    function retrieve() public view returns (uint256) {
        return favoriteNumber;
    }

 

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        person.push(People(_favoriteNumber, _name));
        favoriteNumberToName[_favoriteNumber] = _name;
    }
}
