#!/bin/bash

if [[ "$1" == "--test" ]]; then
    robot --outputdir RFtests/Results --loglevel DEBUG RFtests/testRobot.robot
else
    robot --outputdir RFtests/Results --loglevel DEBUG RFtests/Tests
fi
