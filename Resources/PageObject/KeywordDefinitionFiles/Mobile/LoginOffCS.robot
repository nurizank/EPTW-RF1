*** Settings ***
Library     AppiumLibrary
Variables   ../../Locators/Locators_mobile.py
Variables   ../../TestData/TestData_mobile.py

*** Keywords ***
Login Offline CS
    Click Element       ${offcs_menu}
    Wait Until Page Contains Element     ${offcs_name}  timeout=30
    Input Text          ${offcs_name}    ${reqName}
    Input Password      ${offcs_id}      ${reqId}
    Sleep    1
    Click Element       ${btn_enter}
    Sleep    3
    Page Should Contain Text    Offline Confined Space
    Capture Page Screenshot