//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 < 0.9.0;

contract CompararString {

    //no se pueden comparar directamente string con string
    //si se puede comparar int con int
        
    function comparar (string memory j, string memory i)
    public pure returns(bool){
        if ( keccak256(abi.encodePacked(i))== keccak256(abi.encodePacked(j))){
            return true;
        } else{
            return false;
        }
    }
}