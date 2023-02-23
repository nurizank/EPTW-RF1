*** Settings ***
Library     AppiumLibrary
Variables   ../../Locators/Locators_mobile.py

*** Keywords ***
Logout App
    Click Element    ${btn_exit}
    Close Application