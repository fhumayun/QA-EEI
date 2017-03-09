*** Settings ***
Library  ExtendedSelenium2Library
Resource  set.robot

*** Keywords ***
Launch PrePlanned Active Event
    Given a User loads the Active Event SRM Page
    When a valid PrePlanned Event is selected
    Then the PrePlanned Event is launched into the SAC

Given a User loads the Active Event SRM Page
    [Documentation]  PreExisting Preplan check
    Location Should Contain  ${srm.active-event-page_url}

When a valid PrePlanned Event is selected
    [Documentation]  PreExisting Preplan check
    And the preplanned event is launched

And the preplanned event is called "ae-from-ep"
    [Documentation]  Set value to Email Email field.
    Page Should Contain Element  ${srm.active-event-aefromep}

Then the PrePlanned Event is launched into the SAC
    [Documentation]  Set value to Password Password field.
    Click Element  id=event-link-0
