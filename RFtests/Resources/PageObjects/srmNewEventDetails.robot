*** Settings ***
Documentation  new-srm-event web application page object.
Library  ExtendedSelenium2Library

*** Variables ***
# First Row Selectors
${new-srm-event.incident_number}               id=referenceId
${new-srm-event.mission_type}                  name=missionType
${new-srm-event.uas}                           name=fidget
# Second Row Selectors
${new-srm-event.address}                       id=streetLine1
${new-srm-event.aptsuiteunit}                  id=streetLine2
${new-srm-event.zip_code}                      id=zip
${new-srm-event.city}                          id=city
${new-srm-event.state}                         name=state
# Third Row Selectors
${new-srm-event.latitude}                      id=latitude
${new-srm-event.longitude}                     id=longitude
# Fourth Row Selectors
${new-srm-event.description}                   id=description

${new-srm-event.page_loaded_text}              0" class="ng-scope material-icons">person_pin_circle
${new-srm-event.page_url}                      /#/event/add
${new-srm-event.person_account}                id=available-user-4

${new-srm-event.save}                          id=save-button
${new-srm-event.cancel}                        id=cancel-button

*** Keywords ***
Example
    [Arguments]  ${incident_number_value}  ${mission_type_value}  ${address_value}  ${aptsuiteunit_value}  ${zip_code_value}  ${city_value}

Click Accountcircle Faisal Humayun Button
    [Documentation]  Click on Accountcircle Faisal Humayun Button.
    Click Button  ${new-srm-event.accountcircle_faisal_humayun}

Click Cancel Button
    [Documentation]  Click on Cancel Button.
    Click Button  ${new-srm-event.cancel}

Click Close Button
    [Documentation]  Click on Close Button.
    Click Button  ${new-srm-event.close}

Click Exittoapp Logout Button
    [Documentation]  Click on Exittoapp Logout Button.
    Click Button  ${new-srm-event.exittoapp_logout}

Click Lock Change Password Button
    [Documentation]  Click on Lock Change Password Button.
    Click Button  ${new-srm-event.lock_change_password}

Click Menu Button
    [Documentation]  Click on Menu Button.
    Click Button  ${new-srm-event.menu}

Click Person Account Button
    [Documentation]  Click on Person Account Button.
    Click Button  ${new-srm-event.person_account}

Click Save Button
    [Documentation]  Click on Save Button.
    Click Button  ${new-srm-event.save}

Fill
    [Documentation]  Fill every fields in the page.
    new-srm-event.Set Incident Number Number Field
    new-srm-event.Set Mission Type Drop Down List Field
    new-srm-event.Set Uas Drop Down List Field
    new-srm-event.Set Address Text Field
    new-srm-event.Set Aptsuiteunit Text Field
    new-srm-event.Set Zip Code Text Field
    new-srm-event.Set City Text Field
    new-srm-event.Set Latitude Text Field
    new-srm-event.Set Longitude Text Field
    new-srm-event.Set Description Textarea Field

Set Incident Number Number Field
    [Arguments]  ${incident_number_value}=${DATA['INCIDENT_NUMBER']}
    [Documentation]  Set value to Incident Number Number field.
    Input Text  ${new-srm-event.incident_number}  ${incident_number_value}

Set Mission Type Drop Down List Field
    [Arguments]  ${mission_type_value}=${DATA['MISSION_TYPE']}
    [Documentation]  Set value to Mission Type Drop Down List field.
    Select From List By Label  ${new-srm-event.mission_type}  ${mission_type_value}

Set Uas Drop Down List Field
    [Arguments]  ${uas_value}=${DATA['UAS']}
    [Documentation]  Set value to Uas Drop Down List field.
    Select From List By Label  ${new-srm-event.uas}  ${uas_value}

Set Address Text Field
    [Arguments]  ${address_value}=${DATA['ADDRESS']}
    [Documentation]  Set value to Address Text field.
    Input Text  ${new-srm-event.address}  ${address_value}

Set Aptsuiteunit Text Field
    [Arguments]  ${aptsuiteunit_value}=${DATA['APTSUITEUNIT']}
    [Documentation]  Set value to Aptsuiteunit Text field.
    Input Text  ${new-srm-event.aptsuiteunit}  ${aptsuiteunit_value}

Set Zip Code Text Field
    [Arguments]  ${zip_code_value}=${DATA['ZIP_CODE']}
    [Documentation]  Set value to Zip Code Text field.
    Input Text  ${new-srm-event.zip_code}  ${zip_code_value}

Set City Text Field
    [Arguments]  ${city_value}=${DATA['CITY']}
    [Documentation]  Set value to City Text field.
    Input Text  ${new-srm-event.city}  ${city_value}

Set Description Textarea Field
    [Arguments]  ${description_value}=${DATA['DESCRIPTION']}
    [Documentation]  Set value to Description Textarea field.
    Input Text  ${new-srm-event.description}  ${description_value}

Set Latitude Text Field
    [Arguments]  ${latitude_value}=${DATA['LATITUDE']}
    [Documentation]  Set value to Latitude Text field.
    Input Text  ${new-srm-event.latitude}  ${latitude_value}

Set Longitude Text Field
    [Arguments]  ${longitude_value}=${DATA['LONGITUDE']}
    [Documentation]  Set value to Longitude Text field.
    Input Text  ${new-srm-event.longitude}  ${longitude_value}

Unset Mission Type Drop Down List Field
    [Arguments]  ${mission_type_value}=${DATA['MISSION_TYPE']}
    [Documentation]  Unset value from Mission Type Drop Down List field.
    Unselect From List By Label  ${new-srm-event.mission_type}  ${mission_type_value}

Unset Uas Drop Down List Field
    [Arguments]  ${uas_value}=${DATA['UAS']}
    [Documentation]  Unset value from Uas Drop Down List field.
    Unselect From List By Label  ${new-srm-event.uas}  ${uas_value}

Verify Page Loaded
    [Documentation]  Verify that the page loaded completely.
    Wait Until Page Contains  ${new-srm-event.page_loaded_text}

Verify Page Url
    [Documentation]  Verify that current page URL matches the expected URL.
    Location Should Contain  ${new-srm-event.page_url}
