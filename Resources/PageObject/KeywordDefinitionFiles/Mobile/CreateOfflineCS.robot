*** Settings ***
Library     AppiumLibrary
Resource    OpenApp.robot
Resource    LoginCS.robot
Variables   ../../Locators/Locators_mobile.py
Variables   ../../TestData/TestData_mobile.py

*** Keywords ***
Create Offline CS Permit - Project Details
    Click Element       ${newPermit_btn}
    Wait Until Page Contains Element        ${title_ProjectDetails}     timeout=20
    Click Element    ${tenant}
    Wait Until Element Is Visible    ${tenantTM}    timeout=5
    Click Element    ${tenantTM}
    Click Element    ${company}
    Wait Until Element Is Visible    ${companyXYZ}  timeout=5
    Click Element    ${companyXYZ}
    Input Text          ${offcs_lor}     ${lor}
    Hide Keyboard
    Click Element    ${offcs_contract}
    Wait Until Element Is Visible    ${contractTP}  timeout=10
    Click Element    ${contractTP}
    Input Text          ${offcs_csNo}         ${no_cs}
    Hide Keyboard
    Click Element       ${offcs_state}
    Wait Until Element Is Visible    ${state_johor}     timeout=5
    Click Element       ${state_johor}
    Sleep    1
    Input Text          ${offcs_sv}    ${sv}
    Hide Keyboard
    Sleep   1
    Input Text          ${offcs_svPhone}    ${sv_Phone}
    Hide Keyboard
    Scroll    ${offcs_svPhone}     ${offcs_csNo}
    Click Element       ${btn_gps}
    Sleep    3
    Element Should Be Visible   ${gps_permission2}   timeout=20
    Click Element    ${gps_permission2}
    Sleep    15
    Element Should Be Enabled    ${btn_next}
    Click Element    ${btn_next}

Create Offline CS Permit - PI Selection
    Wait Until Page Contains Element    ${title_PiSelection}    timeout=20
    Click Element    ${off_divNMO}
    Sleep    3
    Wait Until Element Is Visible    ${off_region}  timeout=10
    Click Element    ${off_region}
    Wait Until Element Is Visible    ${off_REGION1}  timeout=10
    Click Element    ${off_REGION1}
    Scroll    ${off_region}    ${off_divNMO}
    Input Text    ${off_piName}    ${piName}
    Click Element    ${off_camera}
    Wait Until Page Contains Element    ${camera_permission}    timeout=10
    Click Element       ${camera_permission}
    Wait Until Page Contains Element    ${camera_shutter}     timeout=5
    Click Element       ${camera_shutter}
    Wait Until Page Contains Element    ${camera_shutterOK}     timeout=5
    Click Element       ${camera_shutterOK}
    Sleep    15
    Element Should Be Enabled    ${btn_next}
    Click Element    ${btn_next}
    
