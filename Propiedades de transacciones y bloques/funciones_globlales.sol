pragma solidity >=0.4.4 <0.7.0;

contract funciones_globales {

    // persona que envia la transaccion
    function MsgSender() public view returns(address){
        return msg.sender;
    }

    //tiempo en segundos del bloque actual en la red
    function Now() public view returns(uint){
        return now;
    }

    //vemos el minero que esta procesando el bloque
     function BlockCoinbase() public view returns(address){
        return block.coinbase;
    } 

    // ver la dificulta del bloque
     function BlockDifficulty() public view returns(uint){
        return block.difficulty;
    }

    //devuelve el bloque actual
     function BlockNumber() public view returns(uint){
        return block.number;
    }

    //los primero 4bytes de la transaccion
    function MsgSig() public pure returns(bytes4){
        return msg.sig;
    }  

    //precio del gas de la transaccion
    function txGasPrice() public view returns(uint){
        return tx.gasprice;
    } 


}