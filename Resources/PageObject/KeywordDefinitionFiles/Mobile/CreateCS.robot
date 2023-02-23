*** Settings ***
Library     AppiumLibrary
Resource    OpenApp.robot
Resource    LoginCS.robot
Variables   ../../Locators/Locators_mobile.py
Variables   ../../TestData/TestData_mobile.py

*** Keywords ***
Create CS Permit - Project Details
    Click Element       ${newPermit_btn}
    Wait Until Page Contains Element        ${title_ProjectDetails}     timeout=20
    Input Text          ${cs_lor}     ${lor}
    Input Text          ${txt_csNo}         ${no_cs}
    Click Element       ${list_state}
    Wait Until Element Is Visible    ${state_johor}  timeout=10
    Click Element       ${state_johor}
    Sleep    1
    Click Element    ${list_contract}
    Wait Until Element Is Visible    ${contractTP}  timeout=10
    Click Element    ${contractTP}
    Input Text          ${txt_sv}    ${sv}
    Hide Keyboard
    Sleep   1
    Input Text          ${txt_svPhone}    ${sv_Phone}
    Hide Keyboard
    Scroll    ${txt_svPhone}     ${list_state}
    Click Element       ${btn_gps}
    Sleep    3

#    ${gpsPermission} =    Does element exist ${gps_permission}
#    Skip If    ${gpsPermission}

    Element Should Be Visible   ${gps_permission2}   timeout=20
    Click Element    ${gps_permission2}
    Sleep    15
    Element Should Be Enabled    ${btn_next}
    Click Element    ${btn_next}
Create CS Permit - Team Members
    Wait Until Page Contains Element    ${title_TeamMembers}    timeout=20
    Sleep    1
    Click Element       ${ae_count_btn}
    Sleep    1
    Element Should Be Visible    ${ae_count_1}  timeout=10
    Sleep    1
    Click Element        ${ae_count_1}
    Sleep    1
    Element Should Be Visible   ${ae_search}   timeout=10
    Input Text    ${ae_field}    ${ae}
    Click Element       ${ae_search}
    Sleep    2
    Element Should Be Visible    ${ae_member}   timeout=10
    Sleep    2
    Click Element       ${ae_member}
    Sleep    2
    Input Text    ${sp_field}    ${sp}
    Click Element       ${sp_search}
    Sleep    2
    Element Should Be Visible    ${sp_member}   timeout=10
    Sleep    2
    Click Element       ${sp_member}
    Sleep    2
    Input Text    ${agt_field}    ${agt}
    Click Element       ${agt_search}
    Sleep    2
    Element Should Be Visible    ${agt_member}  timeout=10
    Sleep    2
    Click Element    ${agt_member}
    Sleep    15
    Element Should Be Enabled    ${btn_next}
    Click Element    ${btn_next}
Create CS Permit - PI Selection
    Wait Until Page Contains Element    ${title_PISelection}    timeout=10
    Click Element       ${division_NMO}
    Sleep    5
    Element Should Be Enabled   ${region}
    Click Element       ${region}
    Element Should Be Visible    ${region_1}    timeout=10
    Click Element       ${region_1}
#    Scroll Down         ${next_btn}
    Click Element       ${wilayah}
    Sleep    1
    Element Should Be Visible     ${wilayah_sgor1}  timeout=10
    Click Element       ${wilayah_sgor1}
    Click Element       ${zone}
    Sleep    1
    Element Should Be Visible     ${zone_bRaja}     timeout=10
    Click Element       ${zone_bRaja}
    Click Element       ${pi}
    Element Should Be Visible    ${pi_name}   timeout=10
    Click Element       ${pi_name}
    Element Should Be Visible    ${pi_contactNo}    timeout=10
    Sleep    10
    Element Should Be Enabled    ${btn_next}
    Click Element       ${btn_next}
Create CS Permit - Work Category
    Wait Until Page Contains Element    ${title_WorkCategory}    timeout=10
    Click Element       ${hot_Welding}
    Click Element       ${fireExtinguisher}
    Click Element       ${faceRespirator}
    Sleep    15
    Element Should Be Enabled    ${btn_next}
    Click Element       ${btn_next}
Create CS Permit - Work Category images
    Click Element       ${pic_fireExtinguisher}
    # camera permission check first time
    Wait Until Page Contains Element    ${camera_permission}    timeout=5
    Click Element       ${camera_permission}
    Wait Until Page Contains Element    ${camera_shutter}     timeout=5
    Click Element       ${camera_shutter}
    Wait Until Page Contains Element    ${camera_shutterOK}     timeout=5
    Click Element       ${camera_shutterOK}

    Element Should Be Visible    ${objRecognition_txt}     timeout=10
    Click Element       ${pic_faceRespirator}
    Wait Until Page Contains Element    ${camera_shutter}    timeout=5
    Click Element       ${camera_shutter}
    Wait Until Page Contains Element    ${camera_shutterOK}     timeout=5
    Click Element       ${camera_shutterOK}
    Wait Until Page Contains Element    ${btn_agree}
    Click Element       ${btn_agree}
    Click Element       ${pic_teamPhoto}
    Wait Until Page Contains Element    ${camera_shutter}    timeout=5
    Click Element       ${camera_shutter}
    Wait Until Page Contains Element    ${camera_shutterOK}     timeout=5
    Click Element       ${camera_shutterOK}
    Sleep    5
    Element Should Be Enabled    ${btn_create}
    Click Element       ${btn_create}
    Sleep    2
    Wait Until Page Contains Element    ${created_permitNo}
    Element Should Contain Text     ${created_permitNo}     Permit No
#   ${permitNo}     Run Keyword And Return Status   Page Should Contain Text    ${created_permitNo}

    Sleep    3
    Capture Page Screenshot