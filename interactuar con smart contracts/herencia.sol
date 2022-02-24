//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 < 0.9.0;

contract Banco{

    //definimos un tipo de dato cliente
    struct cliente{
        string _nombre;
        address direccion;
        uint dinero;
    }

    //mapping que nos relaciona el nombre del cliente con el tipo de dato cliente
    mapping (string => cliente) clientes;

    //funcion que nos permite de dar de alta un nuevo cliente

    function nuevoCliente (string memory _nombre) public{
        clientes[_nombre] = cliente(_nombre, msg.sender, 0);
    }

}

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