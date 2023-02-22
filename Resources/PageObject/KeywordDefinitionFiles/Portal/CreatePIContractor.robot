*** Settings ***
Library     SeleniumLibrary
Variables   ../../Locators/Locators.py
Variables   ../../TestData/TestData.py

*** Keywords ***
Valid PI Contractor Add
    Wait Until Element Is Visible    ${menuMgmt}    timeout=10
    Click Element    ${menuMgmt}
    Click Element  ${menuMgmtUser}
    Wait Until Page Contains  Users  timeout=10
    Click Element    ${addBtn}
    Wait Until Page Contains    Add New User  timeout=10
#Select FT/PI Role
    Click Element   ${userRoleBtn}
    Wait Until Element Is Visible    ${userRoleFT}  timeout=5
    Click Element   ${userRoleFT}
    Wait Until Element Is Visible    ${isPI}    timeout=5
    Click Element    ${isPI}
    Sleep    1
#Select State
    Click Element    ${state}
    Click Element    ${state_kedah}
#Select Permit Type
    Click Element    ${permitType}
    Wait Until Element Is Visible    ${typeCS}  timeout=5
    Click Element    ${typeCS}
    Click Element    ${typeHR}
#Key in Name, Email, Contact No
    Input Text   ${nameInput}  ${pi_name}
    Input Text   ${emailInput}  ${pi_email}
    Input Text   ${phoneNo}  ${pi_contactNo}
#Select ID Type
    Click Element   ${idTypeBtn}
    Wait Until Element Is Visible   ${idTypePassport}    timeout=5
    Click Element   ${idTypePassport}
#Key in Passport No, Passport Expiry Date
    Wait Until Element Is Visible    ${passportNoField}     timeout=5
    Input Text    ${passportNoField}    ${pi_passportNo}
    Input Text    ${passportExpDate}   ${pi_expDate}
    Click Element    ${passportExpDateLabel}
#Upload photo of passport, Appointment Letter, key in remarks
    Wait Until Element Is Visible    ${passportPic}     timeout=5
    Choose File    ${passportPic}   C:/Users/TMR&D/PycharmProjects/EPTW1.0/Data/icTest.jpg
    Sleep    1
    Wait Until Element Is Visible    ${appLetter}
    Choose File    ${appLetter}    C:/Users/TMR&D/PycharmProjects/EPTW1.0/Data/apLetter.pdf
    Sleep    1
    Input Text   ${remarkField}  ${pi_remark}
#Enter Superior Id
    Scroll Element Into View    ${cancelBtn}
#    Input Text    ${superiorId}    ${superId}
#    Click Element    ${searchId}
#    Sleep    5
#    Wait Until Element Contains    ${superiorName}    ${superName}  timeout=10
#    Wait Until Element Contains    ${superiorEmail}    ${superEmail}  timeout=10
#    Element Text Should Be    ${superiorName}    ${superName}
#    Element Text Should Be      ${superiorEmail}    ${superEmail}

#Add Cert NTMSP
    Scroll Element Into View    ${cancelBtn}
    Click Element    ${certBtn}
    Wait Until Element Is Visible    ${certTypeBtn}  timeout=5
    Click Element    ${certTypeBtn}
    Wait Until Element Is Visible    ${certTypeNTMSP}   timeout=5
    Click Element    ${certTypeNTMSP}
    Click Element    ${certStartDate}
    Wait Until Element Is Visible    ${date1}   timeout=5
    Click Element    ${date1}
    Wait Until Element Is Enabled    ${certExpDate}  timeout=5
    Click Element    ${certExpDate}
    Click Element    ${calendarYear2}
    Wait Until Element Is Visible    ${calendarYear2025}    timeout=5
    Click Element    ${calendarYear2025}
    Click Element    ${calendarMonth}
    Click Element    ${calendarDay}
#Upload Cert
    Wait Until Element Is Visible    ${certPic}     timeout=5
    Choose File    ${certPic}    C:/Users/TMR&D/PycharmProjects/EPTW1.0/Data/cert1.pdf
    Click Element    ${addCertBtn}
    Sleep    1
#Submit form
    Press Keys   ${submitBtn}   RETURN
    Sleep    1
    Capture Page Screenshot
    Press Keys  ${okBtn}   RETURN
    Sleep    1
# Verify record added in listing page
    Wait Until Element Is Visible    ${search}  timeout=5
    Input Text    ${search}    ${pi_name}
    Sleep    2

    @{results_on_page} =  Get WebElements  ${tableUserName}

    FOR  ${element}  IN  @{results_on_page}
         ${pi_name} =  Get Text  ${element}
    END

    Capture Page Screenshot