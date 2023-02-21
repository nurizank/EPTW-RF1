*** Settings ***
Documentation   To Test Login functionality
Library  SeleniumLibrary
Resource    ../../Resources/PageObject/KeywordDefinitionFiles/Portal/common.robot
Resource    ../../Resources/PageObject/KeywordDefinitionFiles/Portal/LoginPageSA.robot

*** Test Cases ***
Verify valid login
    [Documentation]  To test user able to login with valid login credentials
    [Tags]  Sanity_P
    Start Test  ${url}  ${browser}
    Valid Login
    Finish Test







