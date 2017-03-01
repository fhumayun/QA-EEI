*** Settings ***
Documentation  srm web application common page object.
Library  ExtendedSelenium2Library
Library  ExtendedSelenium2Library

*** Variables ***
# Basic SRM Login Page Objects
${srm.email_id}               id=user-email
${srm.password_id}            id=user-password
${srm.login}                  id=login-button
${srm.page_loaded_text}       561-894-9865
${srm.page_url}               https://qa-srm.strax.co
${srm.email_input}            autobot@ee.io
${srm.password_input}         eei
${srm.browser}                gc
${srm.forgot_password}        id=forgot-link

# New Event Creation Sequence
${srm.addcircleoutline}       id=add-button
${srm.new_event_page_url}     https://qa-srm.strax.co/#/event/add
${srm.field_validation_key}   id=referenceId

#Logout Sequence
${srm.menu-button}            id=open-menu-button
${srm.select-profile}         id=open-account-menu-button
#${srm.select-profile}        css=body > div.container > div.menu-container.ng-scope > div > md-sidenav > md-toolbar > div > md-menu
${srm.select-profile-txt}     Users
${srm.logout}                 id=logout-button
${srm.logout-txt}             Logout
