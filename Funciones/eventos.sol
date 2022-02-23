//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 < 0.9.0;


contract Eventos {

    //Declaramos los eventos
    event nombre1 (string _nombrePersona);
    event nombre2 (string _nombrePersona, uint edadPersona);
    event nombre3 (string, uint, address , bytes32);
    event abortarmision ();

    function EmitirEvento1 (string memory _nombrePersona) public{
        emit nombre1(_nombrePersona);
    }

     function EmitirEvento2 (string memory _nombrePersona, uint _edad) public{
        emit nombre2(_nombrePersona, _edad);
    }

     function EmitirEvento3 (string memory _nombrePersona, uint _edad) public{
        bytes32 hasd_id = keccak256 (abi.encodePacked(_nombrePersona ,_edad, msg.sender ));
        emit nombre3(_nombrePersona , _edad , msg.sender , hasd_id);
    }

     function EmitirEvento4 () public{
        emit abortarmision();
    }
}