//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 < 0.9.0;

library Operaciones{

    function division(uint _i , uint _j) public pure returns(uint){
        require (_j>0, "No podemos dividir por 0");
        return _i/_j;
    }

    function multiplicacion(uint _i , uint _j) public pure returns (uint){
        if ((_i == 0 ) || (_j ==0) ){
            return 0;
        }else{
            return _i * _j;
        }
    }
}

contract calculos {

    using Operaciones for uint;

    function calculo(uint _i , uint _j) public pure returns (uint, uint){
        uint q = _i.division(_j);
        uint m = _i.multiplicacion(_j);

        return (q,m);
    }
}