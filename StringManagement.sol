//SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract StringManagement {

    string public miNombre;

    function setName() public {
        miNombre = "Diego";
    }

    function setName2() public {
        string memory name = "Diego";
        miNombre = name;
    }

    function setNewName( string memory name ) public {
        miNombre = name;
    }

    function setUsername() public {
        miNombre = "Diego AVZ 123";
    }

}
