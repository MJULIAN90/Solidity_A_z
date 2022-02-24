//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 < 0.9.0;

contract SmartContract1 {

    //almacenamiento de la informacion del factory
    mapping (address => address) public miContratoPersonal;

    function factory () public{
        address direccionNuevoContrato = address (new PlantillaContrato(msg.sender));
        miContratoPersonal[msg.sender]= direccionNuevoContrato;
    }
}

contract PlantillaContrato{

    address public owner;

    constructor (address _direccion) {
        owner = _direccion;
    }
}