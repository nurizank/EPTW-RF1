*** Settings ***
Documentation   To Test FT User creation functionality
Library  SeleniumLibrary
Resource    ../../Resources/PageObject/KeywordDefinitionFiles/Portal/common.robot
Resource    ../../Resources/PageObject/KeywordDefinitionFiles/Portal/LoginPageCA.robot
Resource    ../../Resources/PageObject/KeywordDefinitionFiles/Portal/CreateFTUser.robot

*** Test Cases ***
Verify FT user creation
    [Documentation]  To test FT user creation
    [Tags]  Regression_P
    Start Test  ${url}  ${browser}
    Valid Login
    Valid User Add
    Finish Test
