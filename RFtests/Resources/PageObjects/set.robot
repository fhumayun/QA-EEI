*** Settings ***
Documentation  srm web application common page object.
Library  ExtendedSelenium2Library

*** Keywords ***
Start SRM session
    [Documentation]  Configuring WebDriver and Setup
    Open Browser  https://qa-srm.strax.co  googlechrome
    Delete All Cookies
    Sleep  5s

Wait a moment
    [Documentation]  Sleep delay
    Sleep  5s

Open Google
    [Documentation]  Test your webdriver by opening google
    Open Browser  https://google.com  googlechrome