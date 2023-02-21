*** Settings ***
Library     SeleniumLibrary
Variables   ../../Locators/Locators.py
Variables   ../../TestData/TestData.py

*** Keywords ***
Valid Contractor Add
    Wait Until Element Is Visible    ${menuMgmt}    timeout=10
    Click Element       ${menuMgmt}
    Click Element       ${menuMgmtContractor}
    Wait Until Page Contains  Contractor Companies  timeout=10
    Click Element       ${addBtn}
    Wait Until Page Contains    Add New Contractor  timeout=10

# Fill in the form
    Input Text    ${coNameTxt}          ${coName}
    Input Text    ${coContactNoTxt}     ${coContactNo}
    Input Text    ${coPICTxt}           ${coPIC}
    Input Text    ${coEmailTxt}         ${coEmail}
    Input Text    ${coAddressTxt}       ${coAddress}
    Input Text    ${coRegNoTxt}         ${coRegNo}
    Input Text    ${coAbrvTxt}          ${coAbrv}
    Choose File   ${coLogoBtn}          C:/Users/TMR&D/PycharmProjects/EPTW-RF/Data/logo.png
    Sleep    1
    Scroll Element Into View    ${submitBtn}
    Click Element    ${coRegionBtn}
    Scroll Element Into View    ${coRegionCentral1}
    Click Element    ${coRegionCentral1}
    Input Text    ${coRemarkTxt}    ${coRemark}
#    Click Element    ${coTypeBtn}
#    Click Element    ${coTypeNonTP}
# Submit form
    Press Keys   ${submitBtn}   RETURN
    Sleep    1
# Verify record added in listing page
    Wait Until Element Is Visible    ${search}  timeout=5
    Input Text    ${search}    ${coName}
    Sleep    1

    @{results_on_page} =  Get WebElements  ${coTable_name}

    FOR  ${element}  IN  @{results_on_page}
         ${coName} =  Get Text  ${element}
    END

    Capture Page Screenshot


