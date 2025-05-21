pragma solidity ^0.8.18;  // we need to specify the version of solidity 
// the ^ identiy which it works also for version upper respect the specified version 

/*
SPDX-License-Identifier: MIT*/

//contract is like a class
contract SimpleStorage {
    uint256 storedData; //default private variable to make it as public add pubblic like:
    uint256 public ocidata;
    bool flag=true;
    address myaddress=0xd0A27e15bEe784372Ccfc1A1EAe7AE7Cb212d5De;

    uint256 [] datalist;

    struct Person{
        string name;
        uint256 age;
        string surname;
    }

    Person public oci=Person({name: "Haochen",age:26,surname:"He"});
    Person [] public listofpeople;
    mapping(string=>uint256)  public personage;
    
    function store(uint256 _data) public
    {
        storedData = _data; 
        ocidata=_data;  
    }
     //view means that here we are going to use this function only to read something

    function retrieve() public view returns (uint256) 
    { 
        return storedData;
    }
       // define as pure the return value should be something defined in the function
      function retrievepure() public pure returns (uint256) 
    { 
        uint _data=9;
        return _data;
    }
    //calldata, memory, storage , diff between memory and calldata , with memory the variable can still be changed in the function 
    //but with calldata is not possible
    function addPerson(string memory _name, uint256 age, string memory _surname )public{  
        listofpeople.push(Person({name:_name,age : age, surname:_surname}));
        personage[_name]=age;
        }
}   
