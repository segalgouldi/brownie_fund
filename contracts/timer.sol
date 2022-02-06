pragma solidity ^0.6.0;

contract Timer{

    uint _start;
    uint _end;

    modifier timerOver{
        require(now <= _end, "Timer is now over");
        _;

    }


    function start() public {
        _start = now;
    }

    function end(uint totalTimeTimerRuns) public  {
        _end = totalTimeTimerRuns+_start;
    }

    function getTimeLeft() public timerOver view returns(uint){
        return _end-now;
    }

}

 