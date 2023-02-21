*** Settings ***
Documentation   To Test Contractor Admin user creation functionality
Library  SeleniumLibrary
Resource    ../../Resources/PageObject/KeywordDefinitionFiles/Portal/common.robot
Resource    ../../Resources/PageObject/KeywordDefinitionFiles/Portal/LoginPageSA.robot
Resource    ../../Resources/PageObject/KeywordDefinitionFiles/Portal/CreateContractorAdmin.robot

*** Test Cases ***
Verify Contractor Admin user creation
    [Documentation]  To test Contractor Admin creation
    [Tags]  Regression_P
    Start Test  ${url}  ${browser}
    Valid Login
    Valid Contractor Admin Add
    Finish Test
