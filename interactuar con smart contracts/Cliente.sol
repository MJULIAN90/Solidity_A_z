//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 < 0.9.0;
import "./Banco.sol";
//import {Banco  , Banco2 , Banco3} from "./Banco.sol

contract Cliente is Banco {
    
    function altaCliente (string memory _nombre) public{
        nuevoCliente(_nombre);
    }

    function ingresarDinero (string memory _nombre, uint _cantidad) public{
        clientes[_nombre].dinero =  clientes[_nombre].dinero + _cantidad;
    }

    function retirarDinero (string memory _nombre,  uint _cantidad) public returns (bool){
        bool flag = true;

        if (clientes[_nombre].dinero - _cantidad >= 0){
            clientes[_nombre].dinero = clientes[_nombre].dinero - _cantidad;
        }else {
            flag =false;
        }
        return flag;
    }

    function consultarDinero(string memory _nombre) public view returns (uint){
        return clientes[_nombre].dinero;
    }

}