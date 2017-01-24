*** Settings ***
Documentation  srm domain specific keyword definitions
Library  ExtendedSelenium2Library

*** Variables ***
#New Event Creation Sequence
${srm.page_url}               https://qa-srm.strax.co/#/event/active
${srm.addcircleoutline}       id=add-button
${srm.new_event_page_url}     https://qa-srm.strax.co/#/event/add
${srm.field_validation_key}   id=referenceId

*** Keywords ***

Create a New Event
    Given an authenticated User is in the SRM
    When the User clicks the Add Event Icon
    Then the New Event Page is Displayed

Given an authenticated User is in the SRM
    [Documentation]  Verify that current page URL matches the expected URL.
    Location Should Contain  ${srm.page_url}

When the User clicks the Add Event Icon
    [Documentation]  Click on Addcircleoutline Button.
    Click Button  ${srm.addcircleoutline}

Then the New Event Page is Displayed
    [Documentation]  Verify that the SRM New Event page loaded completely.
    Wait Until Page Contains Element  ${srm.field_validation_key}
