*** Settings ***
Documentation   To Test FT User creation functionality
Library  SeleniumLibrary
Resource    ../../Resources/PageObject/KeywordDefinitionFiles/Portal/common.robot
Resource    ../../Resources/PageObject/KeywordDefinitionFiles/Portal/LoginPageCA.robot
Resource    ../../Resources/PageObject/KeywordDefinitionFiles/Portal/CreateFTUser_dd.robot


*** Test Cases ***
Verify FT user creation
    [Documentation]  To test FT user creation
    [Tags]  Regression_P
    Start Test  ${url}  ${browser}
    Valid Login
    Valid User Add-Data Driven    ${name_dd}    ${email_dd}    ${contactNo_dd}    ${passportNo_dd}    ${expDate_dd}    ${remark_dd}
    Finish Test
