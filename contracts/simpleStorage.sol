// SPDX-License-Identifier: MIT

pragma solidity >0.8.0;

contract SimpleStorage {
  uint256 favoriteNumber;

  struct People {
    uint256 age;
    string name;
  }

  People[] public people;
  mapping(string => uint256) public nameToAge;

  function store(uint256 _x) public {
    favoriteNumber = _x;
  }

  function retrieve() public view returns (uint256) {
    return favoriteNumber;
  }

  function addPerson(string memory _name, uint256 _age) public {
    people.push(People(_age, _name));
    nameToAge[_name] = _age;
  }
}
