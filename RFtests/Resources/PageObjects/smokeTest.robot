*** Settings ***
Documentation  srm domain specific keyword definitions
Library  ExtendedSelenium2Library

*** Variables ***
# Basic UI Validation Page Objects
${url}                       https://google.com
${browser}                   googlechrome

*** Keywords ***
Set Environment Variable  webdriver.chrome.driver  /usr/local/bin/chromedriver.exe

SmokeTest
    [Documentation]  Verify that webdriver and robot are working correctly
    Open Browser  ${url}  ${browser}
