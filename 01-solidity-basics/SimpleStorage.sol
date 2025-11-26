// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.24; // stating our version


/**
 * @title SimpleStorage
 * @author Maxwell
 * @notice Stores and retrieves a favorite number
 * @dev Learning focus: state variables and functions
 */

contract SimpleStorage {
     uint256 myfavoriteNumber; 

     function store(uint256 _favoriteNumber) public {
        myfavoriteNumber = _favoriteNumber;
        
     }
    
     function retrieve() public view returns(uint256){
        return myfavoriteNumber;
     }
      
  
}
