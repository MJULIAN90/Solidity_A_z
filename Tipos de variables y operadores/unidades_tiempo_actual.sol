//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 < 0.9.0;
//pragma solidity >=0.4.4 <0.7.0; cuando trabajamos con esta version debemos cambiar el block.timestamp por now

contract Tiempo{
    //unidades de tiempo
    uint public tiempo_actual = block.timestamp;
    uint public un_minuto = 1 minutes;
    uint public dos_horas = 2 hours;
    uint public cincuenta_dias = 50 days;
    uint public una_semana = 1 weeks;

    //operaciones
    function masSegundos() public view returns(uint){
        return block.timestamp + 50 seconds;
    }
    
    function masHoras() public view returns(uint){
        return block.timestamp + 1 hours;
    }

    function masDias() public view returns(uint){
        return block.timestamp + 3 days;
    }

    function masSemanas() public view returns(uint){
        return block.timestamp + 1 weeks;
    }
}