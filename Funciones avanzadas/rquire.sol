//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 < 0.9.0;

contract Rquire{

    // verificar contrasena

    function password (string memory _pass) public pure returns(string memory){
        require (keccak256 (abi.encodePacked(_pass)) == keccak256 (abi.encodePacked('12345')), "contrasena incorrecta");
        return "contrasena correcta";
    }

    //funcion para pagar
    uint tiempo=0;
    uint public cartera=0;

    function pagar (uint _cantidad ) public returns (uint){
        require(block.timestamp > tiempo + 5 seconds, "Aun no puedes pagar");
        tiempo = block.timestamp;
        cartera = cartera + _cantidad;
        return cartera;
    }

    //funcion con una lista

    string [] nombres;

    function nuevoNombre (string memory _nombre) public{
        for (uint i=0; i<nombres.length; i++){
                require (keccak256(abi.encodePacked(_nombre)) != keccak256(abi.encodePacked(nombres[i])), "ya esta en la lista" );
        }
        nombres.push (_nombre);
    }
}