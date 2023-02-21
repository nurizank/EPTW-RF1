*** Settings ***
Documentation   To Test Search User functionality
Library  SeleniumLibrary
Resource    ../../Resources/PageObject/KeywordDefinitionFiles/Portal/common.robot
Resource    ../../Resources/PageObject/KeywordDefinitionFiles/Portal/LoginPageCA.robot
Resource    ../../Resources/PageObject/KeywordDefinitionFiles/Portal/SearchFTUser.robot

*** Test Cases ***
Verify search user function
    [Documentation]  To test Search FT User
    [Tags]  Regression_P
    Start Test  ${url}  ${browser}
    Valid Login
    Search FT User
    Finish Test