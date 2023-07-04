// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleStorage{

    struct People{
        string name;
        uint256 number;
    }

    mapping (string=>uint256) public peopleMap;

    People[] public peopleArr;

    function addPeople(string memory _name,uint256 _number) public{
        peopleArr.push(People(_name,_number));
        peopleMap[_name] = _number;
    }
}