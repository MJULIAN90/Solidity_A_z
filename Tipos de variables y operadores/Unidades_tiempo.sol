pragma solidity >=0.4.4 <0.7.0;

contract tiempo {

    //unidades de tiempo

    uint public minut = 1 minutes;
    uint public ahora = now;
    uint public horas = 2 hours;
    uint public dias = 10 days;
    uint public semanas = 1 weeks;

    function massegundos() public view returns(uint){
        return now + 50 seconds;
    }

    function masdias() public view returns(uint){
        return now + 10 days;
    }

    function masSemanas() public view returns(uint){
        return now + 10 weeks;
    }
}