*** Settings ***
Test Template  Launch an SAC event from PrePlan
Resource  ../Resources/PageObjects/set.robot
Resource  ../Resources/PageObjects/srmLogin.robot
Resource  ../Resources/PageObjects/srmLaunchEvent.robot
Resource  ../Resources/PageObjects/srmLogout.robot

Test Setup  srmLogin.Start SRM session
Test Teardown  srmLogout.End SRM Session

*** Test Cases ***
As a User I need to launch an SAC event from an Event PrePlan
    [Tags]  SACEvent
    srmLaunchEvent.Launch PrePlanned Active Event
    #set.Wait a Moment
    #sacValidateLoadOut.Test Video Indicator is Green