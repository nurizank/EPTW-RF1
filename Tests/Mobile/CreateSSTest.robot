*** Settings ***
#Library     AppiumLibrary
Resource    ../../Resources/PageObject/KeywordDefinitionFiles/Mobile/OpenApp.robot
Resource    ../../Resources/PageObject/KeywordDefinitionFiles/Mobile/LoginSS.robot
Resource    ../../Resources/PageObject/KeywordDefinitionFiles/Mobile/CreateSS.robot
Variables   ../../Resources/PageObject/Locators/Locators_mobile.py
Variables   ../../Resources/PageObject/TestData/TestData_mobile.py

*** Test Cases ***
Verify SSTA/SSKA creation functionality
    [Documentation]  To test SSTA/SSKA creation
    [Tags]  Regression_M
    Launch Application
    Login SS
    Create SSTA/SSKA - Project Details
    Create SSTA/SSKA - Project Details PI Division
    Create Checklist
