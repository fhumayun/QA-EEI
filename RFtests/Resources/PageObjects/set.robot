*** Settings ***
Documentation  srm web application common page object.
Library  ExtendedSelenium2Library

*** Keywords ***
Start SRM session
    [Documentation]  Configuring WebDriver and Setup
    Open Browser  https://eedev.strax.co  ie
    Delete All Cookies
    Sleep  5s

Wait a moment
    [Documentation]  Sleep delay
    Sleep  5s
