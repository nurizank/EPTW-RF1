*** Settings ***
Library  SeleniumLibrary
Variables   ../../Locators/Locators.py
Variables   ../../TestData/TestData.py

*** Keywords ***
Verify Dashboard Element
    Wait Until Page Contains  Dashboard  timeout=5
    Page Should Contain Element     ${qualifiedPerson_bar}
    Page Should Contain Element     ${permitCount}
    Sleep    2
    Capture Page Screenshot




