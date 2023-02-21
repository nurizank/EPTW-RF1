*** Settings ***
Library  SeleniumLibrary
Variables   ../../Locators/Locators.py

*** Keywords ***
Logout
    Click Element    ${profile}
    Click Element    ${logout}
Close Browser
    Close Browser