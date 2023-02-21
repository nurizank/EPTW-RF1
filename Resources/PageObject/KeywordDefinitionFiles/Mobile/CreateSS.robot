*** Settings ***
Library     AppiumLibrary
Variables   ../../Locators/Locators_mobile.py
Variables   ../../TestData/TestData_mobile.py

*** Keywords ***
Login CS
    Click Element       ${cs_menu}
    Wait Until Page Contains Element    ${cs_title}  timeout=30
    Click Element       ${cs_role}
    Sleep    3
    Click Element       ${role_ES}
    Input Text          ${cs_userid}    ${id}
    Input Text          ${cs_pwd}       ${pwd}
    Sleep    1
    Click Element       ${btn_login}
    Sleep    5
    Element Should Contain Text    ${loginId_header}    ${id}   timeout=30
    Capture Page Screenshot

Create SSTA/SSKA - Project Details

Create SSTA/SSKA - Project Details PI Division

Create Checklist






















