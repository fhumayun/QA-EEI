*** Settings ***
Documentation  srm web application common page object.
Library  ExtendedSelenium2Library

*** Variables ***
#Logout Sequence

${srm.menu-button}            id=open-menu-button
${srm.select-profile}         id=open-account-menu-button
#${srm.select-profile}         css=body > div.container > div.menu-container.ng-scope > div > md-sidenav > md-toolbar > div > md-menu
${srm.select-profile-txt}     Users
${srm.logout}                 id=logout-button
${srm.logout-txt}             Logout
${srm.page-url}               https://qa-srm.strax.co

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
    Location Should Contain  ${srm.page-url}
    Wait 5s
    close browser
