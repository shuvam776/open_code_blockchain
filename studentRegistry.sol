// SPDX-License-Identifier: MIT
pragma solidity 0.8.33;

contract StudentRegistry{
    struct Student {
        string name;
        uint rollNumber;
        bool isRegistered;
    }

    event StudentRegistered(
        address indexed studentAddress,
        string name,
        uint rollNumber
    );
    mapping (address => Student) private students;
    function registerStudent(string memory _name,uint _rollNumber) external {
        require(bytes(_name).length > 0,"Name cannot be empty");
        require(_rollNumber > 0,"Roll number cannot be > 0");
        require(!students[msg.sender].isRegistered,"Student already registered");

        students[msg.sender] = Student({
            name: _name,
            rollNumber : _rollNumber,
            isRegistered :true
        });

        emit StudentRegistered(msg.sender,_name,_rollNumber);
    }
    function getStudent(address _studentAddress)
     external view returns (string memory name, uint256 rollNumber)
    {
        require(students[_studentAddress].isRegistered,"Student is not registered");
        Student memory studentdata = students[_studentAddress];
        return (studentdata.name , studentdata.rollNumber);
    }

}
