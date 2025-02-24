//SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract Variables {

    uint256 public num;
    string public text;
    bool public isSigned;
    address public account;

    function setTrue() public {
        isSigned = true;
    }

    function setFalse() public {
        isSigned = false;
    }

    function setMyAddress() public {
        account = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    }

    function setNewAddress(address newAccount) public {
        account = newAccount;
    }

    function setAddressToZero() public {
        account = address(0);
    }
    
}
