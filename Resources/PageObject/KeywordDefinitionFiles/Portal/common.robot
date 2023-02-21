*** Settings ***
Library  SeleniumLibrary
Variables   ../../Locators/Locators.py
Variables   ../../TestData/TestData.py

*** Variables ***
${url}  http://eptw-portal-eptw.apps.ocp.tmrnd.com.my/#/login
${browser}  chrome

*** Keywords ***
Start Test
    [Arguments]     ${url}    ${browser}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Set Browser Implicit Wait  30
    Title Should Be  e-PTW
    Wait Until Element Is Visible    ${eptwLogo}

Finish Test
    Click Element    ${profile}
    Click Element    ${logout}
    Close Browser