//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 < 0.9.0;

contract Comida{

    struct plato{
        string nombre;
        string ingredientes;
        uint tiempo;
    }

    //Declarar un array dinamico de platos
    plato  [] platos;

    //Relacionamos con un  mapping el nombre del plato y ingredientes
    mapping (string => string) ingredientes;

    // funcion que nos permite dar de alta el plato
    function nuevoPlato (string memory _nombre, string memory _ingredientes, uint _tiempo) internal{
        platos.push(plato(_nombre, _ingredientes, _tiempo));
        ingredientes[_nombre] = _ingredientes;
    }

    function ingrediente (string memory _nombre) internal view returns(string memory){
        return ingredientes[_nombre];
    }
}

contract Sandwitch is Comida{

    function sandwitch(string memory _ingredientes, uint _tiempo) external{
        nuevoPlato('Sandwitch', _ingredientes, _tiempo);
    }

    function verIngredientes() external view returns (string memory){
        return ingrediente ('Sandwitch');
    }
}


