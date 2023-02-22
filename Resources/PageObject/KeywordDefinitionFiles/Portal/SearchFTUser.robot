*** Settings ***
Library  SeleniumLibrary
Library    Collections
Variables   ../../Locators/Locators.py
Variables   ../../TestData/TestData.py

*** Keywords ***
Search FT User
    Click Element    ${menuMgmt}
    Click Element  ${menuMgmtUser}
    Wait Until Page Contains  Users  timeout=10
    Input Text    ${search}    ${keyword_name}
    Wait Until Element Is Visible   ${tableUser}
    Sleep   3

    @{results_on_page} =  Get WebElements  ${tableUserName}
    FOR  ${element}  IN  @{results_on_page}
         ${keyword_name} =  Get Text  ${element}
    END

    Capture Page Screenshot
    