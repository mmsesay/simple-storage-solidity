// SPDX-License-Identifier: MIT

pragma solidity >0.8.0;

contract SimpleStorage {

  struct People {
    uint256 age;
    string name;
    string sex;
  }

  People[] public people;
  mapping(string => uint256) public nameToAge;

  function addPerson(string memory _name, string memory _sex, uint256 _age) public {
    people.push(People(_age, _name,  _sex));
    nameToAge[_name] = _age;
  }
}
