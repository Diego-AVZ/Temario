//SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract Visibility {
    
    string public text1 = "variable Public, se puede leer siempre";
    string internal text2 = "variable Internal, se puede leer desde dentro del contrato con funciones";

    function read1() public view returns(string memory){
        return(text1);
    }

    function read2() public view returns(string memory){
        return(text2);
    }

    function read3Internal() internal view returns(string memory){
        return(text1);
    }

    /*
        Public => Permite llamadas/ejecuciones desde dentro o fuera del contrato.
        Internal => Permite llamadas/ejecuciones SOLO desde dentro contrato.

        Existen también PRIVATE y EXTERNAL (pero las veremos más adelante) 
    */

}
