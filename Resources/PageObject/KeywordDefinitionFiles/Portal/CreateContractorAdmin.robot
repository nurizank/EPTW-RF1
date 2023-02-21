*** Settings ***
Library     SeleniumLibrary
Variables   ../../Locators/Locators.py
Variables   ../../TestData/TestData.py

*** Keywords ***
Valid Contractor Admin Add
    Wait Until Element Is Visible    ${menuMgmt}    timeout=10
    Click Element    ${menuMgmt}
    Click Element  ${menuMgmtUser}
    Wait Until Page Contains  Users  timeout=10
    Click Element    ${addBtn}
    Wait Until Page Contains    Add New User  timeout=10
# Select Role
    Click Element   ${userRoleBtn}
    Wait Until Element Is Visible    ${userRoleCA}  timeout=5
    Click Element   ${userRoleCA}
# Key in Name, User Id, Email, Contact No
    Input Text   ${nameInput}  ${caName}
    Input Text   ${useridTxt}  ${caUserId}
    Input Text   ${emailInput}  ${caEmail}
    Input Text   ${phoneNo}  ${caContactNo}
# Select Contractor Company
    Click Element    ${contractorBtn}
    Input Text    ${contractorSearch}    ${caSearchKey}
    Sleep    1
    Click Element    ${contractorXYZ}
    Wait Until Element Is Visible    ${contractorRegionBtn}     timeout=5
    Click Element    ${contractorRegionBtn}
    Click Element    ${contractorRegionC1}
    Input Text    ${remarkField}    ${remark}
# Submit form
    Press Keys   ${submitBtn}   RETURN
    Sleep    1
# Verify record added in listing page
    Wait Until Element Is Visible    ${search}  timeout=5
    Input Text    ${search}    ${caName}
    Sleep    1

    @{results_on_page} =  Get WebElements  ${tableUserName}

    FOR  ${element}  IN  @{results_on_page}
         ${caName} =  Get Text  ${element}
    END

    Capture Page Screenshot
