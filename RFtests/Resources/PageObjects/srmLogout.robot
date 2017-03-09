*** Settings ***
Documentation  srm web application common page object.
Library  ExtendedSelenium2Library
Library  ExtendedSelenium2Library
Resource  set.robot

*** Keywords ***
Wait Until Angular Ready
Set Selenium Speed 0.1
End SRM Session
    [Documentation]  Concatenate Logout Sequence
    #Wait 5s
    Given a User selects the main menu button
    When the correct menu selections are made
    Then the User is logged out of the SRM

Wait 5s
    [Documentation]  Sleep delay
    Sleep  5s

Given a User selects the main menu button
    [Documentation]  Verification Step
    Click Element  ${srm.menu-button}

When the correct menu selections are made
    [Documentation]  Logout Sequence
    Current Frame Contains          ${srm.select-profile-txt}
    Click Element                   ${srm.select-profile}
    Current Frame Contains          ${srm.logout-txt}
    Click Element                   ${srm.logout}

Then the User is logged out of the SRM
    [Documentation]  Verify Landing Page Loaded
    Location Should Contain  ${srm.page_url}
    Wait 5s
    close browser
