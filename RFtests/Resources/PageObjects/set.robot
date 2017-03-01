*** Settings ***
Documentation  srm web application common page object.
Library  ExtendedSelenium2Library

*** Variables ***
# Basic UI Validation Page Objects
${srm.email}                  id=user-email
${srm.login}                  id=login-button
${srm.page_loaded_text}       561-894-9865
${srm.page_url}               https://qa-srm.strax.co
${srm.password}               id=user-password
${srm.email}                  faisal@ee.io
${srm.browser}                gc
*** Keywords ***
Start SRM session
    [Documentation]  Configuring WebDriver and Setup
    Open Browser  ${srm.page_url}  ${srm.browser}
    Delete All Cookies
    Sleep  5s

Wait a moment
    [Documentation]  Sleep delay
    Sleep  5s