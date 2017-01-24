*** Settings ***
Documentation  test to make sure robot framework is behaving.
Resource  ./Resources/PageObjects/smokeTest.robot

*** Test Cases ***
As a Tester I need to make sure robot is working correctly
    [Documentation]  Create new test run
    [Tags]  NewSmokeTest

    smokeTest.SmokeTest