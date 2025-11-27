// SPDX-License-Identifier: MIT
pragma solidity 0.8.30; //solidity versions
contract SimpleStorage {
uint256 myFavoriteNumber; //defaults to 0
//uint256[] listOfFavoriteNumbers;
struct Person{
    uint256 favoriteNumber;
    string name;
}
//dynamic array
Person[] public listOfPeople;
mapping(string => uint256) public nameToFavoriteNumber;

function store(uint256 _favoriteNumber)  public virtual {
    myFavoriteNumber = _favoriteNumber; 
    }
    function retrieve() public view returns(uint256) {
        return myFavoriteNumber;
    }
    //calldata, memory, storage
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push( Person(_favoriteNumber, _name ));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
    
 }