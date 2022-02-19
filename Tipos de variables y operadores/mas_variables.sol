pragma solidity >=0.4.4 <0.7.0;
pragma experimental ABIEncoderV2;

contract mas_variables{

    //variables tipo string 
    string mi_primer_string;
    string public saludo="hola";

    //variables boleanas
    bool verdad;
    bool falso=false;

    //variable de tipo bytes
    bytes32 mi_primer_bytes;
    bytes32 segundo_bytes;
    bytes32 public hast = keccak256(abi.encodePacked("nombre"));
    bytes4 public Identifier='hola';

    function ejemploBytes4 () public{
        Identifier= msg.sig;
    }


    address mi_address;
    address public mi_address_local = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;


}