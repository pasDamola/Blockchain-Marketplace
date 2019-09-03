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

  event ProductCreated(
    uint id,
    string name,
    uint price,
    address owner,
    bool purchased
);
    constructor() public {
        name = "Oyincode Marketplace";
    }


    function createProduct(string memory _name, uint _price) public {
    // Require a valid name
    require(bytes(_name).length > 0, "length of product name must not be null");
    // Require a valid price
    require(_price > 0, "price of product must not be null");
    // Increment product count
    productCount ++;
    // Create the product
    products[productCount] = Product(productCount, _name, _price, msg.sender, false);
    // Trigger an event
    emit ProductCreated(productCount, _name, _price, msg.sender, false);
}


}

