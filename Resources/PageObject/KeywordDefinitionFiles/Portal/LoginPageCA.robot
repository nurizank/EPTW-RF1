*** Settings ***
Library  SeleniumLibrary
Variables   ../../Locators/Locators.py
Variables   ../../TestData/TestData.py

*** Keywords ***
Valid Login
    Input Text          ${unameField}   ${unameCA}
    Input Password      ${pwdField}     ${pwdCA}
    Click Element       ${loginBtn}
    Wait Until Page Contains  Dashboard  timeout=5
    Sleep    2
#Invalid Login
#    Input Text      ${unameField}   ${invalidId}
#    Input Text      ${pwdField}     ${invalidPwd}
#    Click Element   ${loginBtn}
#    Element Should Be Visible    invalidToast   timeout=2
#    Wait Until Element Is Visible    invalidToast   timeout=5