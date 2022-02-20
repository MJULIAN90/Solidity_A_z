//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 < 0.9.0;
// pragma experimental ABIEncoderV2; es necesario en version como la 0.4.4

contract public_private_internal{

    //modificador public
    uint public mi_entero = 45;
    string public miString = "Joan";
    // sino le colocamos public no saldra en la parte visual
    address public owner;

    //en versiones anteriores como la 0.4.4 el constructor debe ir en public

   /*
    constructor() public {
        owner = msg.sender;
    } 
    */

    constructor() {
        owner = msg.sender;
    }

    //modificador private
    uint private miEnteroPrivado =10;
    bool private flag = true;

    function test (uint _k) public {
        miEnteroPrivado= _k;
    }

    // modificadores internal
    bytes32 internal hash = keccak256(abi.encodePacked('hola'));
    address internal direccion = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
}