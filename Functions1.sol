//SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract Functions1 {

    uint x;

    function write() public {
        x = 123;
    }

    function read() public view returns(uint){
        return(x);
    }

    function pureFunct() public pure returns(uint){
        return(10 + 10);
    }

}

/*
    Write => Modifica el estado del contrato y de la blockchain. Consume Gas.
    Read => Obtiene datos del contrato (o de contratos externos) y los devuelve (puede hacer cálculos sin modificar el estado). No consume Gas.
    Pure => Hace cálculos sin interactuar con ningún dato del contrato. No modifica estado. No consume Gas
*/
