*** Settings ***
Documentation  srm web application common page object.
Resource  ../Resources/PageObjects/set.robot
Resource  ../Resources/PageObjects/srmLogin.robot
Resource  ../Resources/PageObjects/srmAddEvent.robot
Resource  ../Resources/PageObjects/srmLogout.robot
Test Setup  Start SRM session
Test Teardown  End SRM Session

*** Test Cases ***
As a User I need to be able to successfully create a New Event
    [Tags]  NewEvent

    srmLogin.Start SRM Login
    #set.Wait a Moment
    srmAddEvent.Create A New Event

