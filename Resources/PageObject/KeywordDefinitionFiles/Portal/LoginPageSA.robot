*** Settings ***
Library  SeleniumLibrary
Variables   ../../Locators/Locators.py
Variables   ../../TestData/TestData.py

*** Keywords ***
Valid Login
    Input Text          ${unameField}   ${unameSA}
    Input Password      ${pwdField}     ${pwdSA}
    Click Element       ${loginBtn}
    Wait Until Page Contains  Dashboard  timeout=5
    Sleep    2
