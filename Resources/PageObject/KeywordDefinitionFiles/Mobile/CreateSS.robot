*** Settings ***
Library     AppiumLibrary
Variables   ../../Locators/Locators_mobile.py
Variables   ../../TestData/TestData_mobile.py

*** Keywords ***
Create SSTA/SSKA - Project Details
    Click Element       ${btn_new}
    Wait Until Page Contains Element    ${title_ProjectDetails}     timeout=20




Create SSTA/SSKA - Project Details PI Division

Create Checklist






















