*** Settings ***
Library     AppiumLibrary
Variables   ../../Locators/Locators_mobile.py
Variables   ../../TestData/TestData_mobile.py

*** Keywords ***
Login SS
    Click Element       ${ss_menu}
    Wait Until Page Contains Element    ${ss_title}  timeout=30
    Click Element       ${ss_role}
    Sleep    3
    Click Element       ${role_requestor}
    Sleep    2
    Input Text          ${ss_userid}    ${id}
    Input Password      ${ss_pwd}       ${pwd}
    Sleep    1
    Click Element       ${btn_login}
    Sleep    5
    Element Should Contain Text    ${loginId_header}    ${id}   timeout=30
    Capture Page Screenshot























