pragma solidity ^0.4.23;

contract Test {
    function TestOutput() public {
        LibOutput.$output();
    }
}

library LibOutput {
    IOutput constant addContract = IOutput(0xD45968f99CE42C63b2eE728BF4CCF63c19166BC0);  // contract output address
    
    function $output() internal {
        addContract.output();
    }
}

interface IOutput {
    function output() external;
}

contract Output {
    event _output(uint256 balance);
    
    function output() public {
        emit _output(msg.sender.balance);
    }
}