*** Settings ***
Library     SeleniumLibrary
Library     DataDriver  ../../../../Data/FT-add.xlsx  sheet_name=Sheet1
#Library     DataDriver  C:/Users/TMR&D/PycharmProjects/EPTW-RF/Data/user-add.csv
Variables   ../../Locators/Locators.py


*** Keywords ***
Valid User Add-Data Driven
    [Arguments]  ${name_dd}    ${email_dd}    ${contactNo_dd}    ${passportNo_dd}    ${expDate_dd}    ${remark_dd}
    Click Element    ${menuMgmt}
    Click Element  ${menuMgmtUser}
    Wait Until Page Contains  Users  timeout=10
    Click Element    ${addBtn}
    Wait Until Page Contains    Add New User  timeout=10

#Select Role
    Click Element   ${userRoleBtn}
    Wait Until Element Is Visible    ${userRoleFT}  timeout=5
    Click Element   ${userRoleFT}
#Select State
    Click Element    ${state}
    Click Element    ${state_kedah}
#Key in Name, Email, Contact No
    Input Text   ${nameInput}  ${name_dd}
    Input Text   ${emailInput}  ${email_dd}
    Input Text   ${phoneNo}  ${contactNo_dd}
#Select ID Type
    Click Element   ${idTypeBtn}
    Wait Until Element Is Visible   ${idTypePassport}    timeout=5
    Click Element   ${idTypePassport}
    Sleep    1
#Key in Passport No, Passport Expiry Date
    Wait Until Element Is Visible    ${passportNoField}
    Input Text    ${passportNoField}    ${passportNo_dd}
    Input Text    ${passportExpDate}   ${expDate_dd}
    Click Element    ${passportExpDateLabel}
    Sleep    1
#Upload photo of passport, Appointment Letter, key in remarks
    Wait Until Element Is Visible    ${passportPic}
    Choose File    ${passportPic}   C:/Users/TMR&D/PycharmProjects/EPTW1.0/Data/icTest.jpg
    Sleep    1
    Wait Until Element Is Visible    ${appLetter}
    Choose File    ${appLetter}    C:/Users/TMR&D/PycharmProjects/EPTW1.0/Data/apLetter.pdf
    Sleep    1
    Input Text   ${remarkField}  ${remark_dd}
#Add Cert AESP
    Scroll Element Into View    ${cancelBtn}
    Click Element    ${certBtn}
    Wait Until Element Is Visible    ${certTypeBtn}  timeout=5
    Click Element    ${certTypeBtn}
    Wait Until Element Is Visible    ${certTypeAESP}    timeout=5
    Click Element    ${certTypeAESP}
    Click Element    ${certStartDate}
    Wait Until Element Is Visible    ${date1}   timeout=5
    Click Element    ${date1}
    Wait Until Element Is Enabled    ${certExpDate}     timeout=5
    Click Element    ${certExpDate}
    Click Element    ${calendarYear}
    Wait Until Element Is Visible    ${calendarYear2025}    timeout=5
    Click Element    ${calendarYear2025}
    Click Element    ${calendarMonth}
    Click Element    ${calendarDay}
#Upload Cert
    Wait Until Element Is Visible    ${certPic}     timeout=5
    Choose File    ${certPic}    C:/Users/TMR&D/PycharmProjects/EPTW1.0/Data/cert1.pdf
    Sleep    1
    Click Element    ${addCertBtn}
    Sleep    1
#Submit form
    Press Keys   ${submitBtn}   RETURN
    Sleep    1
    Capture Page Screenshot
    Press Keys  ${okBtn}   RETURN
    Sleep    1