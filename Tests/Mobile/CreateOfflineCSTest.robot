*** Settings ***
Resource    ../../Resources/PageObject/KeywordDefinitionFiles/Mobile/OpenApp.robot
Resource    ../../Resources/PageObject/KeywordDefinitionFiles/Mobile/LoginOffCS.robot
Resource    ../../Resources/PageObject/KeywordDefinitionFiles/Mobile/Logout.robot
Resource    ../../Resources/PageObject/KeywordDefinitionFiles/Mobile/CreateOfflineCS.robot
Variables   ../../Resources/PageObject/Locators/Locators_mobile.py
Variables   ../../Resources/PageObject/TestData/TestData_mobile.py

*** Test Cases ***
Verify Offline CS permit creation functionality
    [Documentation]  To test Offline CS Permit creation
    [Tags]  Regression_M
    Launch Application
    Login Offline CS
    Create Offline CS Permit - Project Details
    Create Offline CS Permit - PI Selection
    Logout App
