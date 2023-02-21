*** Settings ***
Documentation   To Test Contractor company creation functionality
Library  SeleniumLibrary
Resource    ../../Resources/PageObject/KeywordDefinitionFiles/Portal/common.robot
Resource    ../../Resources/PageObject/KeywordDefinitionFiles/Portal/LoginPageSA.robot
Resource    ../../Resources/PageObject/KeywordDefinitionFiles/Portal/CreateContractor.robot

*** Test Cases ***
Verify Contractor company creation
    [Documentation]  To test Contractor company creation
    [Tags]  Regression_P
    Start Test  ${url}  ${browser}
    Valid Login
    Valid Contractor Add
    Finish Test
