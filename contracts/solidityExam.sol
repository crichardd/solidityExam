pragma solidity 0.5.16;

contract SolidityExam {
    string public name = "SolidityExam";
    address [] public clients;
    uint256 bank = 0;

    mapping(address => uint256) public balanceOf;

    function deposit() public payable{
        require(msg.value >= 1 ether, "Miniumun amount not met");
        clients.push(msg.sender);
        bank -= msg.value;
    }

    function withdraw() public {
        uint256 _value = 5;
        require(clients.length > 0, "Error");
        bank += _value;
        balanceOf[msg.sender] += _value;
        msg.sender.transfer(balance);
    }

    function balance() public view returns (address [] memory) {
        return clients;
    }

    function bankBalance() public view returns (uint256) {
        return address(this).balance;
    }
    
}
