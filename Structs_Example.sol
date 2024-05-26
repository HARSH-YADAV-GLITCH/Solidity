pragma solidity ^0.8.3;

contract Structs {
    struct Car{
        string model ;
        uint year;
        address owner;

    }
    Car public car;
    Car[] public cars;
    mapping(address=>Car[]) public carsByOwner;

    function example() external {
        Car memory toyota= Car("Toyota",1990, msg.sender);
        Car memory lambo= Car({year:1980, model:"Lamborgini",owner:msg.sender});
        Car memory tesla;
        tesla.model= "tesla ";
        tesla.year= 2010;
        tesla.owner= msg.sender;
        
        cars.push(toyota);
        cars.push(lambo);
        cars.push(tesla);

        cars.push(Car("Ferrari",2020,msg.sender));
    }
}
