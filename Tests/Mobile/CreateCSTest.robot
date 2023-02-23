*** Settings ***
#Library     AppiumLibrary
Resource    ../../Resources/PageObject/KeywordDefinitionFiles/Mobile/OpenApp.robot
Resource    ../../Resources/PageObject/KeywordDefinitionFiles/Mobile/LoginCS.robot
Resource    ../../Resources/PageObject/KeywordDefinitionFiles/Mobile/CreateCS.robot
Variables   ../../Resources/PageObject/Locators/Locators_mobile.py
Variables   ../../Resources/PageObject/TestData/TestData_mobile.py

*** Test Cases ***
Verify CS permit creation functionality
    [Documentation]  To test CS Permit creation
    [Tags]  Regression_M
    Launch Application
    Login CS
    Create CS Permit - Project Details
    Create CS Permit - Team Members
    Create CS Permit - PI Selection
    Create CS Permit - Work Category
    Create CS Permit - Work Category images










        




        
        




        
        


