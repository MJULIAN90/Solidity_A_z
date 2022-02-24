//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 < 0.9.0;

contract Modifer{

    //Ejemplo de solo propietario del contrato puede ejecutar una funcion

    address public owner;

    constructor () {
        owner = msg.sender;
    }

    modifier soloPropietario(){
        require (msg.sender == owner, "No tienes permisos");
        _;
    }

    function ejemplo1() public soloPropietario(){
        // codigo de la funcion de solo propietario
    }

    struct cliente{
        address direccion;
        string nombre;
    }

    mapping(string=> address) clientes;

    function altaCliente(string memory _nombre) public{
        clientes[_nombre] = msg.sender;
    }

    modifier soloClientes(string memory _nombre){
        require (clientes[_nombre] == msg.sender);
        _;
    }

    function ejemplo2 (string memory _nombre) public 
    soloClientes(_nombre){
        //logica de solo clientes
    }

    modifier mayorEdad (uint _edadMinima, uint _edadUsuario){
        require (_edadUsuario >= _edadMinima);
        _;
    }

    function conducir (uint _edad) public mayorEdad (18, _edad){
        //codigo a ejecutar para los conductores mayores de edad
    }
}