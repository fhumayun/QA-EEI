*** Settings ***
Documentation  srm web application common page object.
Resource  ../Resources/PageObjects/set.robot
Resource  ../Resources/PageObjects/srmLogin.robot
#Resource  ../Resources/PageObjects/srmTabSwitch.robot
Resource  ../Resources/PageObjects/srmLaunchEvent.robot
#Resource  ../Resources/PageObjects/sacValidateLoadOut.robot
#Resource  ../Resources/PageObjects/sacLeaveEvent.robot

Test Setup  Start SRM session
Test Teardown  End SRM Session


*** Test Cases ***
As a User I need to launch an SAC event from an Event PrePlan
    [Tags]  SACEvent

    srmLogin.Start SRM Login
    srmLaunchEvent.Launch PrePlanned Active Event
    #set.Wait a Moment
    #sacValidateLoadOut.Test Video Indicator is Green