//SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract myBankV1 {

    string public myName;
    uint256 public balanceTokenA;
    uint256 public balanceTokenB;
    uint256 internal priceAB = 10; // A price is 10 Bs == 10 B/A == you need 10 Bs to buy 1 A == you need 1 A to buy 10 B
    address public userAccount;
    bool public isDepositedTokenA;
    bool public isDepositedTokenB;
    //bool public isRegistered;

    uint256 public myFriendBalanceA;

    function setName(string memory _name) public {
        myName = _name;
    }

    function setUserAccount(address _account) public {
        userAccount = _account;
    }

    function depositTokenA() public {
        require(isDepositedTokenA == false, "Ya has depositado A!");
        balanceTokenA = 1000;
        isDepositedTokenA = true;
    }

    function depositTokenB() public {
        if(isDepositedTokenB == false){
            balanceTokenB = 10000;
            isDepositedTokenB = true;
        } // else { //nothing }
    }

    function swapFromAToB( uint amountToSwap ) public {
        require(balanceTokenA >= amountToSwap);
        require(amountToSwap >= 10); // Nos faltó poner este controlador
        balanceTokenA = balanceTokenA - amountToSwap; // Si se modifica balanceA 
        // Si se intenta cambiar menos de 10 As, (1 / 10 = 0 en Solidity)
        uint256 amountBToReceive = amountToSwap / priceAB;
        balanceTokenB = balanceTokenB + amountBToReceive; // Se le suma 0 a balanceB
    }

    function swapFromBToA( uint amountToSwap ) public {
        require(balanceTokenB >= amountToSwap);
        require(amountToSwap >= 1);
        balanceTokenB = balanceTokenB - amountToSwap;
        uint256 amountAToReceive = amountToSwap * priceAB;
        balanceTokenA = balanceTokenA + amountAToReceive;
    }

    function transferTokenAToMyFriend(uint256 amount) public {
        require(amount <= balanceTokenA);
        balanceTokenA = balanceTokenA - amount;
        myFriendBalanceA = myFriendBalanceA + amount;
    }

}
