pragma solidity >=0.4.21 <0.6.0;

contract Marketplace {
    string public name;
    uint public productCount = 0;
    struct Product {
        uint id;
        string name;
        uint price;
        address owner;
        bool purchased;
    }

  mapping(uint => Product) public products;

    constructor() public {
        name = "Oyincode Marketplace";
    }


}

