*** Settings ***
Documentation   To Test PI Contractor creation functionality
Library  SeleniumLibrary
Resource    ../../Resources/PageObject/KeywordDefinitionFiles/Portal/common.robot
Resource    ../../Resources/PageObject/KeywordDefinitionFiles/Portal/LoginPageCA.robot
Resource    ../../Resources/PageObject/KeywordDefinitionFiles/Portal/CreatePIContractor.robot

*** Test Cases ***
Verify FT user creation
    [Documentation]  To test PI Contractor user creation
    [Tags]  Regression_P
    Start Test  ${url}  ${browser}
    Valid Login
    Valid PI Contractor Add
    Finish Test
