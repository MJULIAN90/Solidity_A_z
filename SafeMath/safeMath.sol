//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 < 0.9.0;
import "@openzeppelin/contracts/utils/math/SafeMath.sol";

contract calculosSeguros{
    
    //Debemos declarar para que tipo de datos usaremos la libreria
    using SafeMath for uint;
    
    //Funcion suma segura
    
    function suma(uint _a, uint _b) public pure returns(uint){
        return _a.add(_b);
    }
    
    //Funcion resta
    function resta(uint _a, uint _b) public pure returns(uint){
        return _a.sub(_b);
    }
    
    //funcion multiplicacion
    function multiplicacion(uint _a, uint _b) public pure returns(uint){
        return _a.mul(_b);
    }
    
}