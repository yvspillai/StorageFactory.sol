//SPDX-License-Identifier: MIT

pragma solidity 0.8.30;

import{SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory {
    //uint256 public favoriteNumber
    //type visibility name
    SimpleStorage[] public listOfSimpleStorageContracts;
    
    function createSimpleStorageContract() public {
        SimpleStorage newSimpleStorageContract = new SimpleStorage();
        listOfSimpleStorageContracts.push(newSimpleStorageContract);
    }
    function sfstore(uint256 _simpleStorageIndex, uint256 _newSimpleStorageNumber) public {
     SimpleStorage mySimpleStorage = listOfSimpleStorageContracts[_simpleStorageIndex];   
     mySimpleStorage.store(_newSimpleStorageNumber);
    }
    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256) {
        SimpleStorage mySimpleStorage = listOfSimpleStorageContracts[_simpleStorageIndex]; 
        return mySimpleStorage.retrieve(); 
    }
}